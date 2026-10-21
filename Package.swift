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
            url: "https://github.com/valyrix-io/valyrix-ios-framework/releases/download/1.0.1/Valyrix.xcframework.zip",
            checksum: "baa7fc1f30deee9991b1ab16ceb692150e0c28e575b85d1db8bc51e9ca3f1d3c"
        ),
    ]
)
