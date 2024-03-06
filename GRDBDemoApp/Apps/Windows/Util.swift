import ComposableArchitecture

func configure<T: AnyObject>(_ source: T, _ setup: (T) -> Void) -> T {
    setup(source)
    return source
}

extension Array where Element: ObservationToken {
  func cancelAll() {
    for token in self {
      token.cancel()
    }
  }
}

extension ObservationToken {
  func store(in array: inout [ObservationToken]) {
    array.append(self)
  }
}
