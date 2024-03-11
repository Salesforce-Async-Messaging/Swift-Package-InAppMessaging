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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.1/SMIClientCore-Release.xcframework.zip",
            checksum: "79680ba467f73c72f28a8c42700d498a057fc0970a6ddfbbe8e9c42a3c200f1f"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.1/SMIClientUI-Release.xcframework.zip",
            checksum: "088403d51499ec3ce76a5c359ed03086a87677c59850416640e45bc80c1acf12"
        ),
    ]
)
