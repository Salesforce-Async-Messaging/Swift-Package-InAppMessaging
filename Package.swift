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
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.0/SMIClientCore-Release.xcframework.zip",
            checksum: "be97fca6c8e609b35c0fa570f03dcfbe46705154523ff23989dd24634a169319"
        ),
        .binaryTarget(
            name: "SMIClientUI",
            url: "https://salesforce-async-messaging.s3.amazonaws.com/public/ios/1.8.0/SMIClientUI-Release.xcframework.zip",
            checksum: "41785582c020b9958e18ac10f4f535e9deec3000702ee5ad915e318ea57b639c"
        ),
    ]
)
