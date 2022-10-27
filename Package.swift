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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.2/SMIClientCore-Release.xcframework.zip",
            checksum: "0eb4d808097176b64b19d145c90275ca1b4e299c56988d1165fd4d6d5f0ed8aa"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.1.2/SMIClientUI-Release.xcframework.zip",
            checksum: "577f39da64e24929b49c292c6fe1e54384fbfa56dd84b3ec311809cd91c1f760"
        ),
    ]
)
