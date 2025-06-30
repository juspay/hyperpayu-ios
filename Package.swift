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
        .package(name: "PayUIndia-3DS2-SDK", url: "https://github.com/payu-intrepos/PayU3DS2SDK-iOS.git", .exact("1.4.4"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperPayU",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.3.5/HyperPayU.zip",
            checksum: "da96f2c52d620975acdc1d20a8ba652b0af74b355a2c5b80e2378198aa11ce90"
        ),
        .target(
            name: "HyperPayUDependencies",
            dependencies: [
                .product(name: "PayUIndia-3DS2-SDK", package: "PayUIndia-3DS2-SDK")
            ]
        )
    ]
)