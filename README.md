# AppInfo

A simple Swift utility to fetch application metadata from `Info.plist`.

## Overview

The `AppInfo` struct provides static properties and functions that allow you to fetch common details from your application's `Info.plist` file, such as the app's name, version, build number, and bundle identifier. Additionally, it provides a generic function to retrieve any custom key-value pair from the `Info.plist`.

## Installation

You can add `AppInfo` as a dependency to your project using Swift Package Manager by adding it to the dependencies value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/kevinhermawan/AppInfo.git", .upToNextMajor(from: "1.0.0"))
]
```

Alternatively, in Xcode:

1. Open your project in Xcode.
2. Click on `File` -> `Swift Packages` -> `Add Package Dependency...`
3. Enter the repository URL: `https://github.com/kevinhermawan/AppInfo.git`
4. Choose the version you want to add. You probably want to add the latest version.
5. Click `Add Package`.

## Usage

```swift
import AppInfo

// Fetching predefined details
print(AppInfo.name ?? "Unknown App Name")
print(AppInfo.version ?? "Unknown Version")
print(AppInfo.buildNumber ?? "Unknown Build Number")
print(AppInfo.bundleIdentifier ?? "Unknown Bundle Identifier")

// Fetching a custom key from Info.plist
print(AppInfo.value(for: "YourCustomKey") ?? "Unknown Value")
```

## License

[MIT License](/LICENSE)
