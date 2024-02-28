import Foundation
import WindowsFoundation
import WinAppSDK
import WinUI
import ComposableArchitecture

@Reducer
struct Navigation: Reducer {
  @ObservableState
  struct State: Equatable {
    @Presents var destination: Counter.State?
  }

  enum Action {
    case destination(PresentationAction<Counter.Action>)
    case toggleButtonTapped
  }

  var body: some ReducerOf<Self> {
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

final class NavigationView: WinUI.StackPanel {
  let store: StoreOf<Navigation>
  var observables: [ObservationToken] = []
  var counterView: CounterView?

  public init(store: StoreOf<Navigation>) {
    self.store = store
    super.init()
    self.orientation = .vertical
    self.spacing = 10
    self.horizontalAlignment = .center
    self.verticalAlignment = .center

    self.loaded.addHandler { [weak self] sender, args in
      guard let self else { return }
      let toggleButton = Button()
      toggleButton.content = "Toggle"
      toggleButton.click.addHandler { [store] _, _ in
        store.send(.toggleButtonTapped)
      }
      self.children.append(toggleButton)
      let token = observe { [weak self] in
        guard let self else { return }

        if let counter = store.scope(state: \.destination, action: \.destination.presented),
            counterView == nil {
          self.counterView = CounterView(store: counter)
          self.children.append(self.counterView!)
        } else if store.destination == nil, let counterView = self.counterView {
          if let index = self.children.index(of: counterView) {
            _ = self.children.remove(at: index)
          }
          self.counterView = nil
        }
      }
      observables.append(token)
    }
  }
}
