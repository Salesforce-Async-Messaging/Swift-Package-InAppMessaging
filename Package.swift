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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.0/SMIClientCore-Release.xcframework.zip",
            checksum: "8acab6aa13ff2387d22e9b062adddf9128b561c22b4f978a753a1ae57e910db7"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.0/SMIClientUI-Release.xcframework.zip",
            checksum: "2a57a4a3b4d11da2f3e1dd36398c4f518798e8e4f77e91d0645c991f904509bc"
        ),
    ]
)
