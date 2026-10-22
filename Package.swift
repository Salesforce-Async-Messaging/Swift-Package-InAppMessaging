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
        .package(url: "https://github.com/Salesforce-Async-Messaging/SMIClientCore-iOS.swift.git", exact: "1.13.2")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.13.2/SMIClientUI-Release.xcframework.zip",
            checksum: "63b71a274fbc0799f72acecb7c10a1a28bf43ca84299b1d6b0bdfbd091126e8e"
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
