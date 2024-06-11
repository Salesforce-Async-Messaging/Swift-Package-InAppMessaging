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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.0/SMIClientCore-Release.xcframework.zip",
            checksum: "34d82b08e8d36d8a377fe042a2ef6e469ba37aa052e7dbdaab29b005d638cb2a"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.0/SMIClientUI-Release.xcframework.zip",
            checksum: "bdf260d20af19b051dc93003b90208eac59e06c503b74715c055b12501ed2f26"
        ),
    ]
)
