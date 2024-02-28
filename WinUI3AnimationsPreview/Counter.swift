import Foundation
import WindowsFoundation
import WinAppSDK
import WinUI
import ComposableArchitecture

@Reducer
struct Counter: Reducer {

  @ObservableState
  struct State: Equatable {
    var count = 0
  }

  enum Action {
    case decrementButtonTapped
    case incrementButtonTapped
  }

  var body: some ReducerOf<Self> {
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

final class CounterView: WinUI.StackPanel {
  let store: StoreOf<Counter>
  var observables: [ObservationToken] = []

  public init(store: StoreOf<Counter>) {
    self.store = store
    super.init()
    self.orientation = .horizontal
    self.spacing = 10
    self.horizontalAlignment = .center
    self.verticalAlignment = .center

    self.loaded.addHandler { [weak self] sender, args in
      guard let self = self else { return }
      let decrementButton = Button()
      decrementButton.content = "-1"
      decrementButton.click.addHandler { [store] _, _ in
        store.send(.decrementButtonTapped)
      }
      let incrementButton = Button()
      incrementButton.content = "+1"
      incrementButton.click.addHandler { [store] _, _ in
        store.send(.incrementButtonTapped)
      }

      let countTextBlock = TextBlock()
      countTextBlock.text = "0"
      countTextBlock.fontSize = 24

      self.children.append(decrementButton)
      self.children.append(countTextBlock)
      self.children.append(incrementButton)

      let token = observe { [weak self] in
        guard let self else { return }
        countTextBlock.text = "\(store.count)"
        let scaleValue = 1 + (min(max(Float(store.count) / 10.0, -1.0), 1.0) / 2.0)
        springAnimation.finalValue = Vector3(x: scaleValue, y: scaleValue, z: scaleValue)
        try? countTextBlock.startAnimation(springAnimation)
      }
      observables.append(token)
    }
  }

  deinit {
    observables.forEach { $0.cancel() }
  }

  lazy var compositor: WinAppSDK.Compositor = WinUI.CompositionTarget.getCompositorForCurrentThread()
  lazy var springAnimation: WinAppSDK.SpringVector3NaturalMotionAnimation = {
      // swiftlint:disable:next force_try
      let animation: WinAppSDK.SpringVector3NaturalMotionAnimation = try! compositor.createSpringVector3Animation()
      animation.target = "Scale"
      animation.dampingRatio = 0.6
      animation.period = TimeSpan(duration: 100000)
      return animation
  }()
}
