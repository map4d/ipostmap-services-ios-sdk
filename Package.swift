// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "iPostMapServices",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "iPostMapServices", targets: ["iPostMapServices", "Map4dServices"])
    ],
    targets: [
        .target(
            name: "iPostMapServices",
            dependencies: ["Map4dServices"],
            path: "Sources/iPostMapServices",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "Map4dServices",
            url: "https://github.com/map4d/ipostmap-services-ios-sdk/releases/download/1.1.0/iPostMapServices-1.1.0.xcframework.zip",
            checksum: "776ea819ddc2287377080bd430806727fe0bc82fb489e54cb6b4db77e806cf0d"
        )
    ]
)
