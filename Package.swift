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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.3/SMIClientCore-Release.xcframework.zip",
            checksum: "f7b458e1b81e6662fcb4ae35d04ab4d4bf20cda5407dfd8cb5bd28d14ba0afca"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.3/SMIClientUI-Release.xcframework.zip",
            checksum: "dbab401df53ab5403c12cbf0c3a34baa1633ba9b369f4864d0e7a9f0ce46c4e0"
        ),
    ]
)
