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
            checksum: "3c3dad2590f561002f4a2f4521b6282efe6d7b6d11c66a498af537c928239fcd"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.1/SMIClientUI-Release.xcframework.zip",
            checksum: "b1d5b8502ff28781c3f351bbb050f3550120a606dcbdc221f9f0a5ee92b5d114"
        ),
    ]
)
