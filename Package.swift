// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarkdownUI",
    products: [
        .library(name: "MarkdownUI", targets: ["MarkdownUI", "_MarkdownUIDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darock-Studio/DarockUI", from: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "MarkdownUI", url: "https://github.com/darock-package-distribution/markdownui/releases/download/1.0.1/MarkdownUI.xcframework.zip", checksum: "27d470c07669e39dcb90769b3ff306bd9178f26a09d699998a3b3f53c5299c95"),
        .target(name: "_MarkdownUIDependenciesWrapper", dependencies: [
            "DarockUI"
        ])
    ]
)
