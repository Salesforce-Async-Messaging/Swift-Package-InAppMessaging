// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Swift-InAppMessaging",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Swift-InAppMessaging",
            targets: ["SMIClientCore", "SMIClientUI", "SMIClientCoreWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sqlcipher/SQLCipher.swift.git", from: "4.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "SMIClientCore",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.4/SMIClientCore-Release.xcframework.zip",
            checksum: "41dfd1ac1fa7e4ec23e06c4c7bb4506aba71ac0b251f54e70e1824ab34d33c67"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.4/SMIClientUI-Release.xcframework.zip",
            checksum: "26b9ba9452864375663aefa300a7f66ce6a112e0d8ecc86083276336bdc15e59"
        ),
        .target(
            name: "SMIClientCoreWrapper",
            dependencies: [
                "SMIClientCore",
                .product(name: "SQLCipher", package: "SQLCipher.swift")
            ],
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: nil)
            ]
        )
    ]
)
