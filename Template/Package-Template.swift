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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/${TAG_VERSION}/SMIClientCore-Release.xcframework.zip",
            checksum: "${CORECHECKSUM}"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/${TAG_VERSION}/SMIClientUI-Release.xcframework.zip",
            checksum: "${UICHECKSUM}"
        ),
    ]
)
