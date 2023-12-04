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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.1/SMIClientCore-Release.xcframework.zip",
            checksum: "e58bde4d3ce25f520267dfd66b8d0ff348b096d6d7a33b140fce49b10e28e2e1"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.1/SMIClientUI-Release.xcframework.zip",
            checksum: "3996d33a821d4cebd2cc44dbe18152b320a58b2286127e297e17a068b8af5bd6"
        ),
    ]
)
