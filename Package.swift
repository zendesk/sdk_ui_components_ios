// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKUIComponents",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZendeskSDKUIComponents",
            targets: [
                "ZendeskSDKUIComponents"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKUIComponents",
            path: "ZendeskSDKUIComponents.xcframework"
        )
    ]
)
