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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.1/SMIClientCore-Release.xcframework.zip",
            checksum: "a898809387ff6171997df5b1b2df4d9304baa5f1b8d966010015af996491d0d5"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.1/SMIClientUI-Release.xcframework.zip",
            checksum: "2861a5c5bb9228b9919e4eab8ac0e560cc8732ede9c9214d1f67a65a5f5714a4"
        ),
    ]
)
