// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-InAppMessaging",
    products: [
        .library(
            name: "Swift-InAppMessaging",
            targets: ["InAppMessagingCore", "InAppMessagingUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "InAppMessagingCore",
            url: "",
            checksum: ""
        ),
        .binaryTarget(
            name: "InAppMessagingUI",
            url: "",
            checksum: ""
        ),
    ]
)
