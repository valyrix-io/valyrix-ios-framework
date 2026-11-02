// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Valyrix",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "Valyrix",
            targets: ["Valyrix"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Valyrix",
            url: "https://github.com/valyrix-io/valyrix-ios-framework/releases/download/1.1.0/Valyrix.xcframework.zip",
            checksum: "88078b343b03e45cda760b774068ae2a193111a63b630b926028c8fe21ac05bc"
        ),
    ]
)
