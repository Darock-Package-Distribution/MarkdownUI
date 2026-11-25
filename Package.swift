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
        .binaryTarget(name: "MarkdownUI", url: "https://github.com/darock-package-distribution/markdownui/releases/download/1.0.3/MarkdownUI.xcframework.zip", checksum: "3579f437bb966839d5a1d72a39c759ec9740360d785be153d4459995d227f6d8"),
        .target(name: "_MarkdownUIDependenciesWrapper", dependencies: [
            "DarockUI"
        ])
    ]
)
