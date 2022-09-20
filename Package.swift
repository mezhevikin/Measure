// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Measure",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v11),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "Measure",
            targets: ["Measure"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Measure",
            dependencies: []),
        .testTarget(
            name: "MeasureTests",
            dependencies: ["Measure"]),
    ]
)
