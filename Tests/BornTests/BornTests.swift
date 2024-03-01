import XCTest
@testable import Born

@MainActor
final class BornTests: XCTestCase {
    func testCounter() async throws {
      let store = TestStore(initialState: Counter.State()) {
        Counter()
      }
      await store.send(.incrementButtonTapped) {
        $0.count = 1
      }

      await store.send(.incrementButtonTapped) {
        $0.count = 2
      }

      await store.send(.decrementButtonTapped) {
        $0.count = 1
      }

      await store.send(.decrementButtonTapped) {
        $0.count = 0
      }

      await store.send(.decrementButtonTapped) {
        $0.count = -1
      }
    }

    func testNavigation() async throws {
      let store = TestStore(initialState: Navigation.State()) {
        Navigation()
      }
      await store.send(.toggleButtonTapped) {
        $0.destination = Counter.State()
      }

      await store.send(.toggleButtonTapped) {
        $0.destination = nil
      }
    }
}
