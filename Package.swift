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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.1/SMIClientCore-Release.xcframework.zip",
            checksum: "dba6291ae199fb41ae13267c8cfd6447a65e3bef0d3ae323c9d5cca17799f0dc"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.1/SMIClientUI-Release.xcframework.zip",
            checksum: "df1b55b749b85bbc077ac66dad01bb243bfd2d1eb4d1163944e7d6edb8c21ce2"
        ),
    ]
)
