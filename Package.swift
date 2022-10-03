// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SolanaWrapper",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "SolanaWrapper",
            targets: ["SolanaWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/LedgerHQ/ios-ble-wrapper", exact: "1.0.0"),
        .package(url: "https://github.com/keefertaylor/Base58Swift.git", from: "2.1.0"),
    ],
    targets: [
        .target(
            name: "SolanaWrapper",
            dependencies: [.product(name: "BleWrapper", package: "ios-ble-wrapper"),
                           .product(name: "Base58Swift", package: "Base58Swift")],
            resources: [.copy("JavaScript/bundle.js")]),
        .testTarget(
            name: "SolanaWrapperTests",
            dependencies: ["SolanaWrapper"]),
    ]
)
