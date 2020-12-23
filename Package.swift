// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "courseProject",
    platforms: [
       .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent-postgres-driver.git", from: "2.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0") 
    ],

    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "FluentPostgresDriver", package: "fluent-postgres-driver"), 
                .product(name: "Fluent", package: "fluent"),
                .product(name: "Leaf", package: "leaf")
                ],
<<<<<<< HEAD
            path: "courseProject/Sources/App"
            // resources: [
            //     .process("dict.json")
            //     ]
=======
            path: "courseProject/Sources/App"    
>>>>>>> b592d3c4bd5983a85717a7271c248d551085dac1
        ),
        .target(
            name: "RunConsole",
            dependencies: ["App"],
            path: "courseProject/Sources/RunConsole"
        ), 
        .target(
            name: "APICore",
            dependencies: ["App"],
            path: "courseProject/Sources/APICore"
        ), 
        .target(
            name: "RunAPI",
            dependencies: ["APICore"],
            path: "courseProject/Sources/RunAPI"
        ),
        .target(
            name: "RunWeb",
            dependencies: [
                .target(name: "APICore")
            ],
            path: "courseProject/Sources/RunWeb"  
        ), 
        .testTarget(
            name: "AppTests",
            dependencies: ["App", .product(name: "XCTVapor", package: "vapor")],
            path: "courseProject/Tests/AppTests"
        ),
    ]
)
