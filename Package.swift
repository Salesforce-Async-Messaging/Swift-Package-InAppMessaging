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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.2/SMIClientCore-Release.xcframework.zip",
            checksum: "6885cfd1f7eebedc5c11c45347f47e98d4fe32a1168f51b2173ff6bdd18363b2"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.2/SMIClientUI-Release.xcframework.zip",
            checksum: "2c7b5f0be3026dba89eaddab7eca20903400ff98b32abb2064358dc3779d9566"
        ),
    ]
)
