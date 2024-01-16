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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.3/SMIClientCore-Release.xcframework.zip",
            checksum: "15294ab7da915d54e7c6dd96b8ed35e561a835334141f9cf9d07e1760aef185d"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.4.3/SMIClientUI-Release.xcframework.zip",
            checksum: "22e94768d1fe559c62b684bb993fea39adb67b2eb3723e23d538765bbc4d525e"
        ),
    ]
)
