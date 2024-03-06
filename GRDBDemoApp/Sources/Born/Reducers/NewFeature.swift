import Foundation
import ComposableArchitecture

@Reducer
public struct NewFeature: Reducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    var player: Player = .init(name: "", score: 0)
  }

  public enum Action {
    case inputName(String)
    case inputScore(String)
    case tappedCreate
    case delegate(Delegate)

    @CasePathable
    public enum Delegate {
      case createdPlayer(Player)
    }
  }

  public var body: some ReducerOf<Self> {
    Reduce<State, Action> { state, action in
      switch action {
      case let .inputName(name):
        state.player.name = name
        return .none

      case let .inputScore(score):
        state.player.score = Int(score) ?? 0
        return .none

      case .tappedCreate:
        return .send(.delegate(.createdPlayer(state.player)))

      case .delegate:
        return .none
      }
    }
  }
}
