// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-InAppMessaging",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Swift-InAppMessaging",
            targets: ["SMIClientUI", "SMIClientUIWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Salesforce-Async-Messaging/SMIClientCore-iOS.swift.git", exact: "1.11.0")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.11.0/SMIClientUI-Release.xcframework.zip",
            checksum: "7388deb61c8f7ce89af63ad384f01c6e36fdab38c193651c91df8827883a23c9"
        ),
        .target(
            name: "SMIClientUIWrapper",
            dependencies: [
                "SMIClientUI",
                .product(name: "SMIClientCore", package: "SMIClientCore-iOS.swift")
            ],
        )
    ]
)
