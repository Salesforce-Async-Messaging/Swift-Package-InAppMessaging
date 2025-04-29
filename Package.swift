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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.2/SMIClientCore-Release.xcframework.zip",
            checksum: "380b39cd3743f84126decba31e05bbc681eb2479a8580b1bbf922f0bd069cc0a"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.2/SMIClientUI-Release.xcframework.zip",
            checksum: "c95bcdbbc2a6ecf492a4231d678e892e74b21181d637fdf6360b2e87300f9cf9"
        ),
    ]
)
