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
        .package(url: "https://github.com/Salesforce-Async-Messaging/SMIClientCore-iOS.swift.git", exact: "1.13.3")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.13.3/SMIClientUI-Release.xcframework.zip",
            checksum: "c80286131987db7cd1ec13bf29797cc7fba2a38555f733c16d3f40dabde33564"
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
