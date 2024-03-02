cd C:\

# check if winget is installed

if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
  $progressPreference = 'silentlyContinue'
  Write-Information "Downloading WinGet and its dependencies..."
  Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
  Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
  Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile Microsoft.UI.Xaml.2.8.x64.appx
  Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
  Add-AppxPackage Microsoft.UI.Xaml.2.8.x64.appx
  Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
}

winget install --id Microsoft.VisualStudio.2022.Community --exact --force --custom "--add Microsoft.VisualStudio.Component.Windows11SDK.22621 --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64"
winget install --id Git.Git -e
winget install --id Microsoft.VCRedist.2015+.x64 -e
winget install --id Python.Python.3.9 -e
winget install --id Kitware.CMake -e
winget install --id Ninja-build.Ninja -e
winget install --id bloodrock.pkg-config-lite -e

git clone https://github.com/arasan01/vcpkg.git
.\vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg install sqlite3[fts5,snapshot]
.\vcpkg\vcpkg integrate install

[System.Environment]::SetEnvironmentVariable('PKG_CONFIG_PATH', 'C:\vcpkg\installed\x64-windows\lib\pkgconfig', [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable('PATH', "$env:PATH;C:\vcpkg\installed\x64-windows\bin", [System.EnvironmentVariableTarget]::User)

