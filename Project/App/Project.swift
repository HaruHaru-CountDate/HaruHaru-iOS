import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "HaruHaru",
    options: .options(
        defaultKnownRegions: ["en", "ko"],
        developmentRegion: "ko"
    ),
    settings: .settings(
        base: .init()
            .otherLinkerFlags(["$(inherited) -ObjC"]),
        configurations: [
            .debug(name: .debug),
            .release(name: .release)
        ],
        defaultSettings: .recommended
    ),
    targets: [
        .target(
            name: "HaruHaru",
            destinations: [.iPhone],
            product: .app,
            bundleId: "com.eunchan.HaruHaru",
            deploymentTargets: .iOS("15.0"),
            sources: ["iOS/Source/**"],
            resources: ["iOS/Resource/**"],
            scripts: [.codeQuality],
            dependencies: [
                .external(name: "FlexibleKit"),
                .external(name: "HaruKit")
            ]
        ),
        .target(
            name: "HaruHaruWidget",
            destinations: [.iPhone],
            product: .appExtension,
            bundleId: "com.eunchan.HaruHaruWidget",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .extendingDefault(with: [
                "CFBundleDisplayName": "$(PRODUCT_NAME)",
                "NSExtension": [
                    "NSExtensionPointIdentifier": "com.apple.widgetkit-extension"
                ]
            ]),
            sources: ["iOS-Widget/Source/**"],
            resources: ["iOS-Widget/Resource/**"],
            scripts: [.codeQuality]
        )
    ]
)
