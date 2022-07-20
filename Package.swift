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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.1/SMIClientCore-Release.xcframework.zip",
            checksum: "3fa94e5919d99ab81b89a089b6ce8b02f0f7342f25fb39ff938f7a1e2b741f5c"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.1/SMIClientUI-Release.xcframework.zip",
            checksum: "a2b1d216905dbf6f8ee2c1b4862b6b997c44198d14ad52b1abda31bac2d2ca2d"
        ),
    ]
)
