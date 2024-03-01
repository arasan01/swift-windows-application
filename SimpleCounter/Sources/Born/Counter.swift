import ComposableArchitecture

@Reducer
public struct Counter: Reducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    public var count = 0

    public init(count: Int = 0) {
      self.count = count
    }
  }

  public enum Action {
    case decrementButtonTapped
    case incrementButtonTapped
  }

  public var body: some ReducerOf<Self> {
    Reduce<State, Action> { state, action in
      switch action {
      case .decrementButtonTapped:
        state.count -= 1
      case .incrementButtonTapped:
        state.count += 1
      }
      return .none
    }
  }
}
