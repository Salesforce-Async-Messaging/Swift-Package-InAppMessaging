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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.2/SMIClientCore-Release.xcframework.zip",
            checksum: "4f84e180ee0227f1a8984d597e31b5452f8efd8aeee6f7dcce7f4755187db006"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.0.2/SMIClientUI-Release.xcframework.zip",
            checksum: "15180f672e29b6ec39dcc457a31aa4a499a2bc9c132ff0a7bd953b2e45109a95"
        ),
    ]
)
