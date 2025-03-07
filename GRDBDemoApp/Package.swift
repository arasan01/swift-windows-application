// swift-tools-version: 5.9

import Foundation
import PackageDescription

var swiftSettings: [SwiftSetting] = [
    .define("SQL_TRACE", .when(configuration: .debug))
]

let package = Package(
    name: "multiplatform-app",
    products: [
        .library(name: "Born", targets: ["Born"]),
    ],
    dependencies: [
        .package(url: "https://github.com/arasan01/swift-composable-architecture", branch: "windows/1.8.2"),
        .package(url: "https://github.com/arasan01/GRDB.swift", branch: "master"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Born",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "GRDB", package: "GRDB.swift"),
                .product(name: "Logging", package: "swift-log")
            ],
            swiftSettings: swiftSettings
        ),
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
