import Foundation
import ComposableArchitecture

@Reducer
public struct EditFeature: Reducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    var player: Player
  }

  public enum Action {
    case inputName(String)
    case inputScore(String)
    case tappedUpdate
    case delegate(Delegate)

    @CasePathable
    public enum Delegate {
      case updatedPlayer(Player)
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

      case .tappedUpdate:
        return .send(.delegate(.updatedPlayer(state.player)))

      case .delegate(.updatedPlayer):
        return .none
      }
    }
  }
}
