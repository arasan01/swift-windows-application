// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "multiplatform-app",
    products: [
        .library(name: "Born", targets: ["Born"]),
    ],
    dependencies: [
        .package(url: "https://github.com/arasan01/swift-composable-architecture", revision: "adfa61b02b833c1ab2dccbc6badef909639cedc3"),
        .package(url: "https://github.com/arasan01/GRDB.swift", revision: "584d867eb22d35d0746302be5d43d34fed3a895b")
    ],
    targets: [
        .target(
            name: "Born",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "GRDB", package: "GRDB.swift")
        ]),
        .testTarget(
            name: "BornTests",
            dependencies: ["Born"]
        ),
    ]
)

#if os(Windows)

// MARK: - Windows

let GUILinkerSettings: [LinkerSetting] = [
    .unsafeFlags(["-Xlinker", "/SUBSYSTEM:WINDOWS"], .when(configuration: .release)),
    // Update the entry point to point to the generated swift function, this lets us keep the same main method
    // for debug/release
    .unsafeFlags(["-Xlinker", "/ENTRY:mainCRTStartup"], .when(configuration: .release)),
]

let products: [Product] = [
    .executable(name: "WindowsApp", targets: ["WindowsApp"]),
]

let dependencies: [Package.Dependency] = [
    .package(url: "https://github.com/thebrowsercompany/swift-windowsappsdk", branch: "main"),
    .package(url: "https://github.com/thebrowsercompany/swift-windowsfoundation", branch: "main"),
    .package(url: "https://github.com/thebrowsercompany/swift-winui", branch: "main"),
    .package(url: "https://github.com/thebrowsercompany/swift-webdriver", branch: "main")
]

let targets: [Target] = [
    .executableTarget(
        name: "WindowsApp",
        dependencies: [
            "Born",
            .product(name: "WinUI", package: "swift-winui"),
            .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
            .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
        ],
        path: "Apps/Windows",
        linkerSettings: GUILinkerSettings
    ),
    .testTarget(
        name: "WinUITests",
        dependencies: [
            .product(name: "WinAppDriver", package: "swift-webdriver"),
        ],
        path: "Apps/WinUITests"
    )
]

package.products.append(contentsOf: products)
package.dependencies.append(contentsOf: dependencies)
package.targets.append(contentsOf: targets)

#elseif os(macOS) || os(iOS) || os(tvOS) || os(watchOS)

// MARK: - Apple

package.platforms = [
    .macOS(.v14),
    .iOS(.v17),
    .tvOS(.v17),
    .watchOS(.v10)
]


let products: [Product] = [
    .library(name: "AppleApp", targets: ["AppleApp"]),
]

let dependencies: [Package.Dependency] = [
    // 何もなし
]

let targets: [Target] = [
    .target(
        name: "AppleApp",
        dependencies: [
            "Born"
        ],
        path: "Apps/Apple/Lib"
    )
]

package.products.append(contentsOf: products)
package.dependencies.append(contentsOf: dependencies)
package.targets.append(contentsOf: targets)

#endif
