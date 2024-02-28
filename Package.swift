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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.5/SMIClientCore-Release.xcframework.zip",
            checksum: "85bffb5df276c8e7ad4ece43c070ccbf0a02dc1b5688ee432de92e19e0b44e8a"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.5/SMIClientUI-Release.xcframework.zip",
            checksum: "135375a8106e8a77b9b8f2255f47972a6edcd88073e0dc948765dd2581a3cdc9"
        ),
    ]
)
