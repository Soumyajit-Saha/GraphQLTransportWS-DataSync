// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "GraphQLTransportWS-DataSync",
    products: [
        .library(
            name: "GraphQLTransportWS-DataSync",
            targets: ["GraphQLTransportWS-DataSync"]
        ),
    ],
    dependencies: [
        .package(name: "Graphiti", url: "https://github.com/GraphQLSwift/Graphiti.git", from: "1.0.0"),
        .package(name: "GraphQL", url: "https://github.com/GraphQLSwift/GraphQL.git", from: "2.4.5"),
        .package(name: "GraphQLRxSwift", url: "https://github.com/GraphQLSwift/GraphQLRxSwift.git", from: "0.0.4"),
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift.git", from: "6.1.0"),
        .package(name: "swift-nio", url: "https://github.com/apple/swift-nio.git", from: "2.33.0"),
    ],
    targets: [
        .target(
            name: "GraphQLTransportWS-DataSync",
            dependencies: [
                .product(name: "Graphiti", package: "Graphiti"),
                .product(name: "GraphQLRxSwift", package: "GraphQLRxSwift"),
                .product(name: "GraphQL", package: "GraphQL"),
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "RxSwift", package: "RxSwift"),
            ]
        ),
        .testTarget(
            name: "GraphQLTransportWSTests-DataSync",
            dependencies: ["GraphQLTransportWS-DataSync"]
        ),
    ]
)
