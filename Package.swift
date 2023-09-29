// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "macaroon",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Macaroon", targets: ["Macaroon"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .exact("5.0.0")),
        .package(url: "https://github.com/luximetr/AnyFormatKit.git", .exact("2.2.1")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .exact("7.6.2")),
        .package(name: "Macaw", url: "https://github.com/exyte/macaw.git", .exact("0.9.7"))
    ],
    targets: [
        .target(name: "Macaroon", dependencies: ["SnapKit", "AnyFormatKit", "Macaw", "Kingfisher"], path: "Sources/macaroon/Classes")
    ],
    swiftLanguageVersions: [.v5]
)
