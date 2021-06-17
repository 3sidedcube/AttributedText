// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AttributedString",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AttributedString",
            targets: ["AttributedString"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AttributedString",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "AttributedStringTests",
            dependencies: ["AttributedString"]
        )
    ]
)
