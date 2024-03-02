import XCTest
import WinAppDriver

@MainActor
final class SimpleCounterUITests: XCTestCase {
  var session: Session!
  override func setUp() async throws {
    self.session = try Session(
      webDriver: WinAppDriver.start(),
      desiredCapabilities: WinAppDriver.Capabilities.startApp(name: ".build\\debug\\WindowsApp.exe")
    )
  }

  override func tearDown() async throws {
    try session.close(window: "SimpleCounter")
    session = nil
  }

  func testCounterNavigation() async throws {
    try XCTUnwrap(session.findElement(byName: "Toggle"), "Toggle button not found").click()
    try XCTAssertNotNil(session.findElement(byName: "0"), "no open navigation")
    for v in 0..<4 {
      try XCTUnwrap(session.findElement(byName: "+1"), "Increment button not found").click()
      try XCTAssertNotNil(session.findElement(byName: "\(v + 1)"), "missing incremented value")
    }
    for v in 0..<8 {
      try XCTUnwrap(session.findElement(byName: "-1"), "Decrement button not found").click()
      try XCTAssertNotNil(session.findElement(byName: "\(3 - v)"), "missing decremented value")
    }
    for v in 0..<4 {
      try XCTUnwrap(session.findElement(byName: "+1"), "Increment button not found").click()
      try XCTAssertNotNil(session.findElement(byName: "\(v + -3)"), "missing incremented value")
    }
  }

  func testNavigationOpenClose() async throws {
    try XCTUnwrap(session.findElement(byName: "Toggle"), "Toggle button not found").click()
    try XCTAssertNotNil(session.findElement(byName: "0"), "no open navigation")
    try XCTUnwrap(session.findElement(byName: "Toggle"), "Toggle button not found").click()
    try XCTAssertNil(session.findElement(byName: "0"), "navigation still open")
  }
}
