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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.0/SMIClientCore-Release.xcframework.zip",
            checksum: "ea4bf38e63bf0c71487e15e6ede191a4f17929a6c89c01a7bec7a8aa6f2194dd"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.0/SMIClientUI-Release.xcframework.zip",
            checksum: "a04ab53ce7083e49731e3e381cc127327b638c87fe6a2f22bac7c39c2c62911b"
        ),
    ]
)
