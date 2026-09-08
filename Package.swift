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
        .package(url: "https://github.com/Salesforce-Async-Messaging/SMIClientCore-iOS.swift.git", exact: "1.12.1")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.12.1/SMIClientUI-Release.xcframework.zip",
            checksum: "e9a58d3fcbdb4e338a350089ae3d54c10c40906a5679ae90ff047faf7127e48b"
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
