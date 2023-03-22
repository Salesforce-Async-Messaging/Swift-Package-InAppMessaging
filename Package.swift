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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.2/SMIClientCore-Release.xcframework.zip",
            checksum: "87bc2051cefcc3a246fb3b214d0b6147587c629ec30d464bee94290a9ee1907f"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.2.2/SMIClientUI-Release.xcframework.zip",
            checksum: "37e03e9c17f8d9934b876ecded3412088eb627b35911792ee1b3d4ccf48f87cf"
        ),
    ]
)
