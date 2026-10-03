# Kilo-Walk Android build script (Windows).
# Consolidates the environment chain assembled on 2026-10-03:
#   Go 1.25.5 (tailscale hook >= 1.25), JDK 21 (AGP 8.11 / Gradle 8.14),
#   Aliyun gradle mirrors (~/.gradle/init.d/mirror.gradle), local keystore.
# Usage:
#   powershell -ExecutionPolicy Bypass -File build-android.ps1 [-SplitAbi] [-Clean]

param(
    [switch]$SplitAbi,
    [switch]$Clean
)

$ErrorActionPreference = 'Stop'

# --- Environment -----------------------------------------------------------
$goRoot = 'D:\tools\linux\go1.25\go'
$flutterBin = 'H:\tools\flutter\flutter_windows_3.47.2-stable\flutter\bin'
$javaHome = 'D:\tools\linux\jdk'
$keystore = 'H:\2026code\demo\doc-kilocode\kilo-walk-release.keystore'

foreach ($p in @($goRoot, $flutterBin, $javaHome, $keystore)) {
    if (-not (Test-Path $p)) { Write-Error "Missing required path: $p" }
}

$env:Path = "$goRoot\bin;$flutterBin;$env:Path"
$env:GOROOT = $goRoot
$env:GOPROXY = 'https://goproxy.cn,direct'
$env:JAVA_HOME = $javaHome

# --- Build -----------------------------------------------------------------
Push-Location $PSScriptRoot
try {
    if ($Clean) { flutter clean }
    flutter pub get
    if ($SplitAbi) {
        flutter build apk --release --split-per-abi   # arm64 ~80MB for phones
    } else {
        flutter build apk --release                   # universal ~244MB
    }
    if ($LASTEXITCODE -ne 0) { Write-Error 'flutter build failed' }

    Get-ChildItem "build\app\outputs\flutter-apk\*.apk" |
        Select-Object Name, @{N='MB';E={[math]::Round($_.Length/1MB,1)}}, LastWriteTime
} finally {
    Pop-Location
}
