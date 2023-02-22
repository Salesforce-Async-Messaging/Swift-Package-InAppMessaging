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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.0/SMIClientCore-Release.xcframework.zip",
            checksum: "ac8d104f7d270d9abef97fa7b789418b5d1a3c4592fae52621a6bcf7c82b3dd1"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.0/SMIClientUI-Release.xcframework.zip",
            checksum: "96f23444d2be52d14af71ba49114b86f07c5c45e6607708be9781ec6783bcfaa"
        ),
    ]
)
