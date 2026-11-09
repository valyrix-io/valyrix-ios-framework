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
            checksum: "563eee086cd6a6a567d0348bd8e950aa62b7242b0e252c7559cf7e1c32c7f5ba"
        ),
    ]
)
