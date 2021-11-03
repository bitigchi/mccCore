// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "mccCore",
    defaultLocalization: "en",
    products: [
        .library(
            name: "mccCore",
            targets: ["mccCore"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "mccCore",
            dependencies: [],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "mccCoreTests",
            dependencies: ["mccCore"]),
    ]
)
