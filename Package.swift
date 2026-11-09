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
            checksum: "e2423a97c2bc03bbfeb67606fb7c7d000a0204c3a793ac20895cd4033dd55da7"
        ),
    ]
)
