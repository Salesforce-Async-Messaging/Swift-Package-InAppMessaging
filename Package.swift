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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.7.0/SMIClientCore-Release.xcframework.zip",
            checksum: "6faba4213bb921d91f3eff53493ce8a1390a676031fc4eadf66d1c493af15869"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.7.0/SMIClientUI-Release.xcframework.zip",
            checksum: "4b1e26e4afbf1660a0f69ad775e2aa51997aa7461a17e40e59522613e5368726"
        ),
    ]
)
