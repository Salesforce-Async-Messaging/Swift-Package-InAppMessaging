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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.2/SMIClientCore-Release.xcframework.zip",
            checksum: "75cef8c769bb45dc48e8db10daafb30c51911543424cba54cc36312186d214c3"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.9.2/SMIClientUI-Release.xcframework.zip",
            checksum: "61ae7b7aebda4f99b2e90a588568ec8f361702aa82728144f23250ce98e7e111"
        ),
    ]
)
