// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperPayU",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperPayU",
            targets: ["HyperPayU", "HyperPayUDependencies"]
        )
    ],
    dependencies: [
        .package(name: "PayUIndia-3DS2-SDK", url: "https://github.com/payu-intrepos/PayU3DS2SDK-iOS.git", .exact("1.4.2"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperPayU",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.4.16/HyperPayU.zip",
            checksum: "66865dc7cca1e4179f636a49192a495d727ba1cab654bbb625f5f8bdbfe8e00f"
        ),
        .target(
            name: "HyperPayUDependencies",
            dependencies: [
                .product(name: "PayUIndia-3DS2-SDK", package: "PayUIndia-3DS2-SDK")
            ]
        )
    ]
)