// swift-tools-version:6.0
import PackageDescription
import Foundation

let currentDirectory = Context.packageDirectory

let linkerSettings: [LinkerSetting] = [
/* Figure out magic incantation so we can delay load these dlls
    .unsafeFlags(["-L\(currentDirectory)/CWinAppSDK/nuget/lib"]),
    .unsafeFlags(["-Xlinker" , "/DELAYLOAD:Microsoft.WindowsAppRuntime.Bootstrap.dll"]),
*/
]

let package = Package(
  name: "WinRTProjections",
  products: [
    .library(name: "WinUI", targets: ["WinUI"]),
    .library(name: "WindowsFoundation", targets: ["WindowsFoundation"]),
    .library(name: "WinAppSDK", targets: ["WinAppSDK"]),
    .library(name: "Win2D", targets: ["Win2D"]),
    .library(name: "UWP", targets: ["UWP"]),
    .library(name: "CWinRT", targets: ["CWinRT"]),
    .library(name: "CWinAppSDK", targets: ["CWinAppSDK"])
  ],
  targets: [
    .target(
      name: "WinUI",
      dependencies: [
        "CWinRT",
        "UWP",
        "WinAppSDK",
        "WindowsFoundation",
      ],
      path: "WinUI"
    ),
    .target(
      name: "WindowsFoundation",
      dependencies: [
        "CWinRT",
      ],
      path: "WindowsFoundation"
    ),
    .target(
      name: "WinAppSDK",
      dependencies: [
        "CWinRT",
        "UWP",
        "WindowsFoundation",
        "CWinAppSDK"
      ],
      path: "WinAppSDK"
    ),
    .target(
      name: "Win2D",
      dependencies: [
        "CWinRT",
        "UWP",
        "WindowsFoundation",
        "WinUI",
      ],
      path: "Win2D",
      resources: [
        .copy("Resources/app.exe.manifest"),
        .copy("Resources/Microsoft.Graphics.Canvas.dll"),
      ]
    ),
    .target(
      name: "UWP",
      dependencies: [
        "CWinRT",
        "WindowsFoundation",
      ],
      path: "UWP"
    ),
    .target(
        name: "CWinRT",
        path: "CWinRT",
        linkerSettings: [
            .unsafeFlags(["-nostartfiles"]),
        ]
    ),
    .target(
      name: "CWinAppSDK",
      path: "CWinAppSDK",
      resources: [
        .copy("nuget/bin/Microsoft.WindowsAppRuntime.Bootstrap.dll"),
      ],
      linkerSettings: linkerSettings
    )
  ]
)