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
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.0/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "c07d49195e53844728fcf8d2c1ce9b3eeca6e53317509628b81cc5c41b59292c"),
        
//        .binaryTarget(
//            name: "ConvivaSDK",
//            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.0/ConvivaSDK/ConvivaSDK.xcframework.zip",
//            checksum: "2b53aded747578bb7b5cb5832f47590130b59c1a0b65996977380c6988a789f9"),

        .target(
              name: "ConvivaBrightcoveTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaBrightcove")
              ],
              path: "PlatformExcludes"
            )
     ]
)
