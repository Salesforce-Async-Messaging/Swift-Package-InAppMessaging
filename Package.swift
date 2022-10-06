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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.0/SMIClientCore-Release.xcframework.zip",
            checksum: "81aa61ef6f55b4a67be0d62cbb21b9a47e6f7c3b07b41403bdfb3e4ffd976245"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.0/SMIClientUI-Release.xcframework.zip",
            checksum: "069b02981f137bf3259c0c5540d338e5029ba38a9328acb5c86f6b01cbd4b318"
        ),
    ]
)
