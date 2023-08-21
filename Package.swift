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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.2/SMIClientCore-Release.xcframework.zip",
            checksum: "2713a23f052e137156d749289780e1fa440ae95502bedc7ebf15ebf7f4fd9cf3"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.3.2/SMIClientUI-Release.xcframework.zip",
            checksum: "2ae2adfb2f629dc354f24a8fd449fe3f3f424ef64b804291ad7c56d14e7ebaee"
        ),
    ]
)
