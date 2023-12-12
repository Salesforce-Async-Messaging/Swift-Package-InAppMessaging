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
            checksum: "db1d03dd6d6107ac0bee79516fd0ac9c8869cf2a85a8a1e016ab20ee9dfc385c"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.2/SMIClientUI-Release.xcframework.zip",
            checksum: "1c2049020caf5ba4b453d8be4dab31f7313c20d7d7e6bfa4d4fdcd97ddc9ceb8"
        ),
    ]
)
