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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.0/SMIClientCore-Release.xcframework.zip",
            checksum: "641d8c984b2b11ea8b3edac880679f3a071505f984b2554b3da37190f9079ea9"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.0/SMIClientUI-Release.xcframework.zip",
            checksum: "91c08d9759b2425840030d7cd4b8c91ef44fccb932d02426a3da1ecad0372203"
        ),
    ]
)
