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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.0/SMIClientCore-Release.xcframework.zip",
            checksum: "eea600d5d8e1bc1e0efe86e182c0c7037c924fd284f49e952d9fceae5c77e2e3"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.5.0/SMIClientUI-Release.xcframework.zip",
            checksum: "bbaac9081dfa9af8adeb5a658da88015ebae2fcb745686cf4415cf88dd806d1b"
        ),
    ]
)
