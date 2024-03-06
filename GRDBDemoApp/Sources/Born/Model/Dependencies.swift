import ComposableArchitecture

extension DependencyValues {
  public var appDatabase: AppDatabase {
    get { self[AppDatabase.self] }
    set { self[AppDatabase.self] = newValue }
  }
}

extension AppDatabase: TestDependencyKey {
  public static var testValue: AppDatabase {
    AppDatabase.empty()
  }

  public static var previewValue: AppDatabase {
    AppDatabase.random()
  }
}

extension AppDatabase: DependencyKey {
  public static var liveValue: AppDatabase {
    AppDatabase.shared
  }
}
