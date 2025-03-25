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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.1/SMIClientCore-Release.xcframework.zip",
            checksum: "93c04f08f5adaeb7ce8fadb11d7aa8b716d2f3b36243a46ad99a1fdd02a99250"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.1/SMIClientUI-Release.xcframework.zip",
            checksum: "fd249aac3343a75be3d9e5b692b6d53022f305f11a2ce9601845bfc16d94214c"
        ),
    ]
)
