import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Component",
    targets: [
        .target(
            name: "Component",
            destinations: [.iPhone],
            product: .staticLibrary,
            bundleId: "com.eunchan.Component",
            deploymentTargets: .iOS("15.0"),
            sources: ["Source/**"],
            resources: ["Resource/**"],
            scripts: [.codeQuality],
            dependencies: [
                .external(name: "FlexibleKit"),
            ]
        )
    ]
)
