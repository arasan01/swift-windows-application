import ComposableArchitecture
import GRDB

@Reducer
public struct ListFeature: Reducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    public var players: IdentifiedArrayOf<Player>
    public var ordering: PlayerOrdering
    @Presents public var destination: Destination.State?

    public init(players: [Player] = [], ordering: PlayerOrdering = .byName) {
      self.players = .init(uniqueElements: players)
      self.ordering = ordering
    }
  }

  @Reducer(state: .equatable)
  public enum Destination {
    case new(NewFeature)
    case edit(EditFeature)
  }

  public enum PlayerOrdering {
    case byName
    case byScore
  }

  public enum Action: ViewAction {
    case destination(PresentationAction<Destination.Action>)
    case setPlayers([Player])
    case observePlayers
    case view(View)

    @CasePathable
    public enum View: Equatable {
      case viewAppeared
      case viewDisappeared
      case tappedChangeOrdering(PlayerOrdering)
      case tappedAllSwipe
      case tappedRefreshUser
      case tappedTornado
      case tappedNewUser
      case swipePlayer([Player.ID])
      case tappedExistingUser(Player.ID)
    }
  }

  @Dependency(\.appDatabase) var appDatabase
  @Dependency(\.mainQueue) var mainQueue

  public enum CancelID {
    case databaseObserve
  }

  public var body: some ReducerOf<Self> {
    Reduce<State, Action> { state, action in
      switch action {
        case .view(.viewAppeared):
          return .send(.observePlayers)

        case .view(.viewDisappeared):
          return .cancel(id: CancelID.databaseObserve)

        case let .view(.tappedChangeOrdering(ordering)):
          state.ordering = ordering
          return .send(.observePlayers)

        case .view(.tappedAllSwipe):
          return .run { [appDatabase] send in
            try await appDatabase.deleteAllPlayers()
          }

        case .view(.tappedRefreshUser):
          return .run { [appDatabase] send in
            try await appDatabase.refreshPlayers()
          }

        case .view(.tappedTornado):
          return .run { [appDatabase] send in
            try? await withThrowingTaskGroup(of: Void.self) { group in
              for idx in 0..<10 {
                _ = group.addTask {
                  try await mainQueue.sleep(for: .milliseconds(idx * 250))
                  try await appDatabase.refreshPlayers()
                }
              }
              try await group.waitForAll()
            }
          }

        case .view(.tappedNewUser):
          state.destination = .new(NewFeature.State())
          return .none

        case let .view(.swipePlayer(ids)):
          return .run { [appDatabase] send in
            try await appDatabase.deletePlayers(ids: ids.compactMap { $0 })
          }

        case let .view(.tappedExistingUser(id)):
          guard let player = state.players[id: id] else { return .none }
          state.destination = .edit(EditFeature.State(player: player))
          return .none

        case let .destination(.presented(.new(.delegate(.createdPlayer(player))))),
             let .destination(.presented(.edit(.delegate(.updatedPlayer(player))))):
          state.destination = nil
          var player = player
          return .run { [appDatabase] send in
            try await appDatabase.savePlayer(&player)
          }

        case .destination:
          return .none

        case .observePlayers:
          return .run { [ordering = state.ordering] send in
            let playersStream = ValueObservation.tracking { db in
              switch ordering {
                case .byName:
                  return try Player.all().orderedByName().fetchAll(db)
                case .byScore:
                  return try Player.all().orderedByScore().fetchAll(db)
              }
            }
            .values(in: appDatabase.reader)

            for try await newPlayers in playersStream {
              await send(.setPlayers(newPlayers))
            }
          }
          .cancellable(id: CancelID.databaseObserve, cancelInFlight: true)

        case let .setPlayers(newPlayers):
          state.players = .init(uniqueElements: newPlayers)
          return .none
      }
    }
    .ifLet(\.$destination, action: \.destination)
  }
}
