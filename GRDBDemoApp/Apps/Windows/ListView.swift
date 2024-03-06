import Foundation
import WindowsFoundation
import WinAppSDK
import WinUI
import UWP
import WinSDK
import Born

@ViewAction(for: ListFeature.self)
final class ListView: StackPanel {
  let store: StoreOf<ListFeature>
  var observables: [ObservationToken] = []

  public init(store: StoreOf<ListFeature>) {
    self.store = store
    super.init()
    self.orientation = .vertical
    self.spacing = 10
    self.horizontalAlignment = .left
    self.verticalAlignment = .top
    let listView = configure(WinUI.ListView()) {
      $0.selectionMode = .single
    }

    let header = configure(WinUI.TextBlock()) {
      $0.text = "Players"
      $0.fontSize = 20
    }

    var changeOrderingButton: Button!
    let buttons = configure(StackPanel()) {
      $0.orientation = .horizontal
      $0.spacing = 10
      $0.horizontalAlignment = .left
      let randomButton = configure(WinUI.Button()) {
        $0.content = "Refresh"
        $0.click.addHandler { [weak self] _, _ in
          guard let self else { return }
          send(.tappedRefreshUser)
        }
      }
      $0.children.append(randomButton)
      let tornadoButton = configure(WinUI.Button()) {
        $0.content = "Tornado"
        $0.click.addHandler { [weak self] _, _ in
          guard let self else { return }
          send(.tappedTornado)
        }
      }
      $0.children.append(tornadoButton)
      changeOrderingButton = configure(WinUI.Button()) {
        $0.content = ""
        $0.click.addHandler { [weak self] _, _ in
          guard let self else { return }
          send(.tappedChangeOrdering(store.ordering == .byName ? .byScore : .byName))
        }
      }
      $0.children.append(changeOrderingButton)
    }

    self.children.append(header)
    self.children.append(buttons)
    self.children.append(listView)


    self.loaded.addHandler { _, _ in
      self.send(.viewAppeared)

      observe { [weak self] in
        guard let self else { return }
        listView.items.clear()
        store.players.forEach { listView.items.append("\($0.name): \($0.score)") }
      }.store(in: &self.observables)

      observe { [weak self] in
        guard let self else { return }
        switch store.ordering {
        case .byName:
          changeOrderingButton.content = "Order by name"
        case .byScore:
          changeOrderingButton.content = "Order by score"
        }
      }.store(in: &self.observables)
    }
  }

  deinit {
    self.send(.viewDisappeared)
    observables.cancelAll()
  }
}
