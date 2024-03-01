import SwiftUI
import Born

public struct ContentView: View {
    @State var store = Store(initialState: Counter.State(), reducer: { Counter() })
    
    public init() {}

    public var body: some View {
        HStack {
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
