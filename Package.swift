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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.5.1/HyperPayU.zip",
            checksum: "a86777df28ba3db3340d9c4729926f1d9f5d3e553f3f795305405c7a75219c18"
        ),
        .target(
            name: "HyperPayUDependencies",
            dependencies: [
                .product(name: "PayUIndia-3DS2-SDK", package: "PayUIndia-3DS2-SDK")
            ]
        )
    ]
)