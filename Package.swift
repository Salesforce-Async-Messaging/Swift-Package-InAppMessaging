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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.0/SMIClientCore-Release.xcframework.zip",
            checksum: "857aaaef67f130c21322e70f5a39513dd94c7913286f55e9400ac29613ea2962"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.0/SMIClientUI-Release.xcframework.zip",
            checksum: "94fb0d92b3d62e5ecb9024bbb93fc5aa6e9f69643de99d7c1573ec835dacee75"
        ),
    ]
)
