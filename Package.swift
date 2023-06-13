// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "h3_swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "h3_swift",
            targets: ["h3_swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "h3lib",
            dependencies: []),
        .target(
            name: "h3_swift",
            dependencies: ["h3lib"]),
        .testTarget(
            name: "h3_swiftTests",
            dependencies: ["h3_swift"]),
    ]
)
