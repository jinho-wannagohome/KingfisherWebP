// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KingfisherWebP",
    platforms: [.iOS(.v10), .tvOS(.v10), .watchOS(.v3), .macOS(.v10_12)], 
    products: [
        .library(name: "KingfisherWebP", targets: ["KingfisherWebP"])
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "6.2.0"),
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "KingfisherWebP",
            dependencies: ["Kingfisher", "KingfisherWebP-ObjC"],
            path: "Sources",
            exclude: ["KingfisherWebP-ObjC"]
        ),
        .target(
            name: "KingfisherWebP-ObjC",
            dependencies: ["libwebp"],
            publicHeadersPath: "include"
        )
    ]
)
