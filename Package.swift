// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-InAppMessaging",
    products: [
        .library(
            name: "Swift-InAppMessaging",
            targets: ["SMIClientCore", "SMIClientUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientCore",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.3/SMIClientCore-Release.xcframework.zip",
            checksum: "73e2df6fccdf0420a17545250f17577fb210d8427da96f2088055426b84c3e6e"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.3/SMIClientUI-Release.xcframework.zip",
            checksum: "bee069c5a27505d95dc3bdff7c60654e88f7cb6dbac75c612742053010dc5fc1"
        ),
    ]
)
