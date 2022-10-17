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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.1/SMIClientCore-Release.xcframework.zip",
            checksum: "d43ccd8ce79a6c4d7a2a43b2b47fdb03dbd3de045602aedeba691dc895db22fc"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.1/SMIClientUI-Release.xcframework.zip",
            checksum: "7066dc6b33c40519aadf3dd8e2882864dc89940d184026c9faa538c08c037c8b"
        ),
    ]
)
