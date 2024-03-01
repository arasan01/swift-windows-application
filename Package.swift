// swift-tools-version: 5.7

import PackageDescription

let GUILinkerSettings: [LinkerSetting] = [
    .unsafeFlags(["-Xlinker", "/SUBSYSTEM:WINDOWS"], .when(configuration: .release)),
    // Update the entry point to point to the generated swift function, this lets us keep the same main method
    // for debug/release
    .unsafeFlags(["-Xlinker", "/ENTRY:mainCRTStartup"], .when(configuration: .release)),
]

let package = Package(
    name: "windows-samples",
    products: [
        .executable(name: "WinUI3AnimationsPreview", targets: ["WinUI3AnimationsPreview"]),
    ],
    dependencies: [
        .package(url: "https://github.com/thebrowsercompany/swift-windowsappsdk", branch: "main"),
        .package(url: "https://github.com/thebrowsercompany/swift-windowsfoundation", branch: "main"),
        .package(url: "https://github.com/thebrowsercompany/swift-winui", branch: "main"),
        .package(url: "https://github.com/arasan01/swift-composable-architecture", branch: "windows/1.8.2")
        // .package(url: "https://github.com/arasan01/GRDB.swift", branch: "master")
    ],
    targets: [
        .executableTarget(
            name: "WinUI3AnimationsPreview",
            dependencies: [
                .product(name: "WinUI", package: "swift-winui"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
                // .product(name: "GRDB", package: "GRDB.swift")
            ],
            path:"WinUI3AnimationsPreview",
            linkerSettings: GUILinkerSettings
        ),
    ]
)
