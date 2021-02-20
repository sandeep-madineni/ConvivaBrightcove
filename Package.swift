// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaBrightcove",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaBrightcove",
            targets: ["ConvivaBrightcoveTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaBrightcove",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/main/ConvivaBrightcove/1.0.0/ConvivaBrightcove.xcframework.zip",
            checksum: "28aa6dad71c03851ded14c10bd0d621c19256ce8740ced254c49427658296239"),
        
        .binaryTarget(
//            name: "ConvivaSDK",
//            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/main/ConvivaSDK/1.0.0/ConvivaSDK.xcframework.zip",
//            checksum: "a2786cb0ce33c0277c586030c94d2076a6afd028eab3c416ee78c96d800673b6"),

        .target(
              name: "ConvivaBrightcoveTarget",
              dependencies: [
                //.target(name: "ConvivaSDK"),
                .target(name: "ConvivaBrightcove")
              ],
              path: "PlatformExcludes"
            )
     ]
)
