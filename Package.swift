// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mccCore",
    products: [
        .library(
            name: "mccCore",
            targets: ["mccCore"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "mccCore",
            dependencies: []),
        .testTarget(
            name: "mccCoreTests",
            dependencies: ["mccCore"]),
    ]
)
