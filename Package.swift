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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.1/SMIClientCore-Release.xcframework.zip",
            checksum: "275a35a657fb8205a370857955b643fb8d88ae684ee30e702555fff4e9cff55a"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.1/SMIClientUI-Release.xcframework.zip",
            checksum: "8812f0885c75cd97c43722c808e8d0ccbbafa23b40072b0b9bba9068ee916fb9"
        ),
    ]
)
