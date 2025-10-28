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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.0/SMIClientCore-Release.xcframework.zip",
            checksum: "5381d711e45026b2b249fc820bb15bd78d4e49abfe84e5315f6e1a2374b63526"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.10.0/SMIClientUI-Release.xcframework.zip",
            checksum: "983aa70003156b5cf79c31c8729c065afa707506db93730293d3065e57e14183"
        ),
    ]
)
