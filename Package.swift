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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.1/SMIClientCore-Release.xcframework.zip",
            checksum: "fb9f06686eb7bb67f76c05b69f3ff88d24af44e7e684b0623311d405805f1b1d"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.1/SMIClientUI-Release.xcframework.zip",
            checksum: "b2ece1cec90121cf492989ca5d23b87df1f76a7005699064b93965b4544dc8df"
        ),
    ]
)
