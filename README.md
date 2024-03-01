# Swift on Windows Samples Apps by arasan01

Sample apps for Swift on Windows, showcasing how to build Windows Apps using the [Windows App SDK](https://github.com/microsoft/windowsappsdk) through the [Swift/WinRT](https://github.com/thebrowsercompany/swift-winrt) language projection.

It discloses how to standardize code on iOS, macOS, and Windows, and how to use TCA and GRDB.swift in a multi-platform environment.

## Setup

### Requirements

Let's set up the surrounding environment first.

```
$ winget install --id Microsoft.VisualStudio.2022.Community --exact --force --custom "--add Microsoft.VisualStudio.Component.Windows11SDK.22621 --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64"
$ winget install --id Swift.Toolchain -e
$ winget install --id Kitware.CMake -e
$ winget install --id Ninja-build.Ninja -e
```

Change to the Nightly tool chain. Install latest Swift SDK from [thebrowsercompany/swift-build](https://github.com/thebrowsercompany/swift-build/releases)

Make sure to have the appropriate version of the Windows App Runtime installed as mentioned [here](https://github.com/thebrowsercompany/swift-windowsappsdk?tab=readme-ov-file#using-windows-app-sdk)

Let's set up a SQLite3 environment to use GRDB.swift. Get SQLite3 from [arasan01/vcpkg](https://github.com/arasan01/vcpkg?tab=readme-ov-file#quick-start-windows). Some build flags are missing in the official version, so they are Forked and added

```
$ vcpkg integrate install
$ vcpkg install sqlite3[fts5,snapshot]
$ winget install -e --id bloodrock.pkg-config-lite
```

Let's set the PATH

```
PKG_CONFIG_PATH=C:\vcpkg\installed\x64-windows\lib\pkgconfig
PATH=%PATH%;C:\vcpkg\installed\x64-windows\bin
```

### VSCode

VSCode is the editor of choice for developing Windows apps on Swift. You can install it from https://code.visualstudio.com/download.

If you choose to use Visual Studio Code, you'll need to install these extensions:
- [Swift VSCode Extension](https://marketplace.visualstudio.com/items?itemName=sswg.swift-lang)

## Building

The build of the Windows applications is done through SPM. This can be done on the command line with `swift build` or in Visual Studio Code with `Ctrl+Shift+B`.

### Debugging in VSCode

Debugging in VSCode is supported through LLDB. You can simply press `F5` or navigate to the `Run and Debug` (`Ctrl+Shift+D`) pane.
