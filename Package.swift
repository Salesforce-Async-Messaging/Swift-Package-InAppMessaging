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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.3/SMIClientCore-Release.xcframework.zip",
            checksum: "3e72dfe4945c9196bf471d40c97a1ed62660e8fd2b5686a6758fefb43be236aa"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.3/SMIClientUI-Release.xcframework.zip",
            checksum: "f2de472d324fcdf7e785e5ea0800388e235b5b152b6449c4cd476b09f5cee0ea"
        ),
    ]
)
