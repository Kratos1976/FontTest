// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HertzUI",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "HertzUI",
            targets: ["HertzUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.hertz.com/Hertz-DT/HertzUI_iOS.git",
            .branch("develop")
        )
    ]
)
