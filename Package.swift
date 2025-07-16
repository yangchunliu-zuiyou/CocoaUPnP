// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CocoaUPnP",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CocoaUPnP",
            targets: ["CocoaUPnP"]
        )
    ],
    dependencies: [
        // .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", branch: "master"),
        .package(url: "https://github.com/AFNetworking/AFNetworking", from: "4.0.1"),
        // .package(url: "https://github.com/swisspol/GCDWebServer.git", from: "3.6.3") // or your forked version
        .package(url: "https://github.com/yene/GCDWebServer.git", from: "3.5.7")
    ],
    targets: [
        .target(
            name: "CocoaUPnP",
            dependencies: [
                "CocoaAsyncSocket",
                .product(name: "AFNetworking", package: "AFNetworking"),
                "GCDWebServer"
            ],
            path: "Sources/CocoaUPnP",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include")
            ]
        )
    ]
)
