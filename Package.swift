// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarkdownUI",
    products: [
        .library(name: "MarkdownUI", targets: ["MarkdownUI", "_MarkdownUIDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darock-Studio/DarockUI", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "MarkdownUI", path: "MarkdownUI.xcframework"),
        .target(name: "_MarkdownUIDependenciesWrapper", dependencies: [
            "DarockUI"
        ])
    ]
)
