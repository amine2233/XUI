// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XUI",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "XUI",
            targets: ["XUI"]),
        .library(
            name: "XUIDeeplink",
            targets: ["XUIDeeplink"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "XUI",
            dependencies: []),
        .testTarget(
            name: "XUITests",
            dependencies: ["XUI"]),
        .target(
            name: "XUIDeeplink",
            dependencies: ["XUI"]),
        .testTarget(
            name: "XUIDeeplinkTests",
            dependencies: ["XUIDeeplink"]),
    ]
)
