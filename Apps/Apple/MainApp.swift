import SwiftUI
import Born

public struct MainApp: App {
    public var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    let store = Store(initialState: Counter(), reducer: { Counter() })

    var body: some View {
        VStack {
            Button(action: {
                store.send(.decrementButtonTapped)
            }) {
                Text("-1")
            }
            Text("\(store.count)")
                .font(.system(size: 24))
            Button(action: {
                store.send(.incrementButtonTapped)
            }) {
                Text("+1")
            }
        }
    }
}
