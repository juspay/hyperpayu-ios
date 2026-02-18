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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.5.9/HyperPayU.zip",
            checksum: "f20cfc566ed41c0ec5435f7d69ecc4c2d51042e2e9260f3ddbe23ab6a0bedef0"
        ),
        .target(
            name: "HyperPayUDependencies",
            dependencies: [
                .product(name: "PayUIndia-3DS2-SDK", package: "PayUIndia-3DS2-SDK")
            ]
        )
    ]
)