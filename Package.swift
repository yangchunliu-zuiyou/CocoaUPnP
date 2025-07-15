// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CocoaUPnP",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "CocoaUPnP", targets: ["CocoaUPnP"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4")
    ],
    targets: [
        .target(
            name: "CocoaUPnP",
            dependencies: ["CocoaAsyncSocket"],
            path: "Sources/CocoaUPnP",
            publicHeadersPath: "."
        )
    ]
)
