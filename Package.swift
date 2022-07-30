// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporSMTPKit",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "VaporSMTPKit",
            targets: ["VaporSMTPKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uniformity-matters/SMTPKitten.git", from: "1.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "VaporSMTPKit",
            dependencies: ["SMTPKitten", "Vapor"]),
    ]
)
