import XCTest
@testable import Born

@MainActor
final class ListFeatureTests: XCTestCase {
  func testObserveDatabase() async throws {
    let store = TestStore(initialState: ListFeature.State()) {
      ListFeature()
    } withDependencies: {
      $0.appDatabase = .empty()
    }

    store.exhaustivity = .off

    let observeTask = await store.send(.view(.viewAppeared))
    await store.receive(\.observePlayers)
    await store.receive(\.setPlayers) {
      $0.players = []
    }
    await store.send(.view(.tappedRefreshUser)).finish()
    await store.receive(\.setPlayers)
    await store.send(.view(.tappedAllSwipe)).finish()
    await store.receive(\.setPlayers) {
      $0.players = []
    }
    let nextObserveTask = await store.send(.view(.tappedChangeOrdering(.byScore))) {
      $0.ordering = .byScore
    }
    await store.receive(\.observePlayers)
    await store.receive(\.setPlayers) {
      $0.players = []
    }
    await store.send(.view(.tappedRefreshUser)).finish()
    await store.receive(\.setPlayers)
    await store.send(.view(.viewDisappeared))
    await observeTask.cancel()
    await nextObserveTask.cancel()
  }

  func testCreateNewPlayer() async throws {
    let store = TestStore(initialState: ListFeature.State()) {
      ListFeature()
    } withDependencies: {
      $0.appDatabase = .empty()
    }

    store.exhaustivity = .off

    let observeTask = await store.send(.view(.viewAppeared))
    await store.send(.view(.tappedNewUser)) {
      $0.destination = .new(NewFeature.State())
    }
    await store.send(.destination(.presented(.new(.inputName("Arthur"))))) {
      $0.$destination[case: \.new]?.player.name = "Arthur"
    }
    await store.send(.destination(.presented(.new(.inputScore("100"))))) {
      $0.$destination[case: \.new]?.player.score = 100
    }

    await store.send(.destination(.presented(.new(.tappedCreate))))

    await store.receive(\.destination.new.delegate.createdPlayer) {
      $0.destination = nil
    }
    await store.receive(\.setPlayers) {
      $0.players = [Player(id: 1, name: "Arthur", score: 100)]
    }
    await observeTask.cancel()
  }
}
