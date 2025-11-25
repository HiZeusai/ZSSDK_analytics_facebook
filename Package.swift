// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZSSDK_analytics_facebook",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Analytics_Facebook",
            targets: ["AnalyticsFacebookWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "15.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "Analytics_Facebook",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/Analytics_Facebook_2.1.8.zip",
            checksum: "42bcbd5e0f658be437deab8dc4290130cf90aa275799e4afce42623c5f6d6a25"
        ),
        .target(
            name: "AnalyticsFacebookWrapper",
            dependencies: [
                "Analytics_Facebook",
                .product(name: "FacebookShare", package: "facebook-ios-sdk")
            ],
            path: "Sources"
        ),
    ]
)
