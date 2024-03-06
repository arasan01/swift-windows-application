import SwiftUI
import Born

@ViewAction(for: ListFeature.self)
public struct ContentView: View {
  public init(store: StoreOf<ListFeature>) {
    self.store = store
  }
  
  public var store: StoreOf<ListFeature>
  
  public var body: some View {
    NavigationStack {
      List {
        ForEach(store.players) { player in
          Text("\(player.name): \(player.score)")
        }
      }
      .onAppear {
        send(.viewAppeared)
      }
      .onDisappear {
        send(.viewDisappeared)
      }
      .toolbar {
        ToolbarItem(placement: .primaryAction) {
          Button("Refresh") { send(.tappedRefreshUser) }
        }
        ToolbarItem(placement: .primaryAction) {
          Button("Tornado") { send(.tappedTornado)}
        }
        ToolbarItem(placement: .navigation) {
          Button("Order") { send(.tappedChangeOrdering(store.ordering == .byName ? .byScore : .byName))}
        }
      }
    }
  }
}

#Preview("ListView") {
  let store = Store(
    initialState: ListFeature.State(),
    reducer: { ListFeature()._printChanges() },
    withDependencies:  {
      $0.appDatabase = .random()
    }
  )
  return ContentView(store: store)
}
