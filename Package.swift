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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.4/SMIClientCore-Release.xcframework.zip",
            checksum: "f3171a4385a6a68b36f2f7365974150c85c8b6ab084370932a0b258b7ff229fa"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.4/SMIClientUI-Release.xcframework.zip",
            checksum: "403ffe82bcfbd9490cdeebc4a25b25d027242381e9f3a80405d83ec158eb0949"
        ),
    ]
)
