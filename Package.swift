// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppInfo",
    products: [
        .library(
            name: "AppInfo",
            targets: ["AppInfo"]),
    ],
    targets: [
        .target(
            name: "AppInfo"),
        .testTarget(
            name: "AppInfoTests",
            dependencies: ["AppInfo"]),
    ]
)
