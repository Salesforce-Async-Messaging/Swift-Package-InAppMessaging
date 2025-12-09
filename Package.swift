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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.2/SMIClientCore-Release.xcframework.zip",
            checksum: "657f0e10669b330007d9492b2b7da3d6cb98fc77c1cb6bff7dad6e6689d90b21"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.2/SMIClientUI-Release.xcframework.zip",
            checksum: "66af993df6e84f6e06a1674fc8674b2ed534515e19b3428cc97dbaef13552207"
        ),
    ]
)
