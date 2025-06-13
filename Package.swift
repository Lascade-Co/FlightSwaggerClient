// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FlightSwaggerClient",
    platforms: [
        .iOS(.v13), // Adjust minimum iOS version as needed
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FlightSwaggerClient",
            targets: ["FlightSwaggerClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.0")
    ],
    targets: [
        .target(
            name: "FlightSwaggerClient",
            dependencies: [
                "Alamofire"
            ], // Add dependency names here if needed
            path: "FlightSwaggerClient/Classes" // Adjust path to your source fil
            swiftSettings: [
                .unsafeFlags([
                    "-enable-library-evolution",
                    "-emit-module-interface"
                ])
            ]
        ),
    ]
)
