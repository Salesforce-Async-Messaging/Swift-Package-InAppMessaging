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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.2/SMIClientCore-Release.xcframework.zip",
            checksum: "b181cc3a4584baef9eaed20a8378120d8d431cc77ba8aaf1dca033982107798c"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.2/SMIClientUI-Release.xcframework.zip",
            checksum: "28f1398deb750dcb7caca1afe317a51fddd9394fb2be5e4a32125687f746e155"
        ),
    ]
)
