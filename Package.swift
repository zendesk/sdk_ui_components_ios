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
        dependencies: [
        .package(
            name: "ZendeskSDKCoreUtilities",
            url: "https://github.com/zendesk/sdk_core_utilities_ios",
            from: "5.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKUIComponents",
            path: "ZendeskSDKUIComponents.xcframework"
        ),
         .target(
            name: "ZendeskSDKUIComponentsTargets",
            dependencies: [
                .target(name: "ZendeskSDKUIComponents"),
                .product(name: "ZendeskSDKCoreUtilities", package: "ZendeskSDKCoreUtilities")
            ],
            path: "Sources"
        )
    ]
)
