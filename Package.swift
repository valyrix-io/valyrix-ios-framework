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
            checksum: "9b1d8ca198dc40e9915a9f0ff862fef9b267f43f4873a83048e136f4dd26828c"
        ),
    ]
)
