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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.2/SMIClientCore-Release.xcframework.zip",
            checksum: "cdc9d0863f1af11f8932ba806ffc1451d76912d7342dba40ae9eca52dde09736"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.2/SMIClientUI-Release.xcframework.zip",
            checksum: "a18011b3fb40f384bcbf3eada9fa664ddbf87ef2bd48fb727d0e44173c45fdca"
        ),
    ]
)
