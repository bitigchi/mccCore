// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MccCore",
    defaultLocalization: "en",
    products: [
        .library(
            name: "MccCore",
            targets: ["MccCore"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MccCore",
            dependencies: [],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "MccCoreTests",
            dependencies: ["MccCore"]),
    ]
)
