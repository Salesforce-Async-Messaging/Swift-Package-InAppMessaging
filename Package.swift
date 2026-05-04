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
        .package(url: "https://github.com/Salesforce-Async-Messaging/SMIClientCore-iOS.swift.git", exact: "1.11.1")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.11.1/SMIClientUI-Release.xcframework.zip",
            checksum: "1f59802d958d5bbb0f274e1aa63bd9947c424e0c9c455f72629f091f83e32c71"
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
