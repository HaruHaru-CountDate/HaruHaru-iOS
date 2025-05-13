// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        baseSettings: .settings(
            base: .init(),
            configurations: [
                .debug(name: .debug),
                .release(name: .release)
            ],
            defaultSettings: .recommended
        ),
        projectOptions: [
            "LocalSwiftPackage": .options(disableSynthesizedResourceAccessors: false)
        ]
    )
#endif

let package = Package(
    name: "HaruHaru",
    dependencies: [
        .package(url: "https://github.com/eunchan2815/FlexibleKit", from: "1.0.5"),
        .package(url: "https://github.com/HaruHaru-CountDate/HaruHaru-DesignSystem", from: "1.0.6")
    ]
)
