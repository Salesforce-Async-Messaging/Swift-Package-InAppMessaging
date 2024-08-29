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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.2/SMIClientCore-Release.xcframework.zip",
            checksum: "d6ddddf30d04d13b169bb960e38e0ee5bb0c089f70d42221d075333e5c6a91e3"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.6.2/SMIClientUI-Release.xcframework.zip",
            checksum: "be5826c8eb89305fbb247b7f6a3e87f19f02bba7896651977ac0cc7a0ea43cac"
        ),
    ]
)
