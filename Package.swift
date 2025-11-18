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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.1/SMIClientCore-Release.xcframework.zip",
            checksum: "feda63c6f2117893dd5fd839e68a380a40c902f6a10306d241ffb51f5d72b59a"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.1/SMIClientUI-Release.xcframework.zip",
            checksum: "71196bf01b9df5aa533cbdb783ffeb8b8a9136bfbe38334a3e5765b5563676f2"
        ),
    ]
)
