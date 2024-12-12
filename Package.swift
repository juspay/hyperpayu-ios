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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.2/HyperPayU.zip",
            checksum: "9d097720b0eab52a7bba00be1abf0856325fa63ac02d50d7701866991191075e"
        ),
        .target(
            name: "HyperPayUDependencies",
            dependencies: [
                .product(name: "PayUIndia-3DS2-SDK", package: "PayUIndia-3DS2-SDK")
            ]
        )
    ]
)