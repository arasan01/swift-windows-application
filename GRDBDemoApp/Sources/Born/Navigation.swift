import ComposableArchitecture

@Reducer
public struct Navigation: Reducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    @Presents public var destination: Counter.State?

    public init(destination: Counter.State? = nil) {
      self.destination = destination
    }
  }

  public enum Action {
    case destination(PresentationAction<Counter.Action>)
    case toggleButtonTapped
  }

  public var body: some ReducerOf<Self> {
    Reduce<State, Action> { state, action in
      switch action {
      case .toggleButtonTapped:
        state.destination = state.destination == nil ? Counter.State() : nil
        return .none

      case .destination(let presentedAction):
        print(presentedAction)
        return .none
      }
    }
    .ifLet(\.$destination, action: \.destination) {
      Counter()
    }
  }
}
