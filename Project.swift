import ProjectDescription

let project = Project(
    name: "HostApplicationIOS",
    targets: [
        .target(
            name: "HostApplicationIOS",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.HostApplicationIOS",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["HostApplicationIOS/Sources/**"],
            resources: ["HostApplicationIOS/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "HostApplicationIOSTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.HostApplicationIOSTests",
            infoPlist: .default,
            sources: ["HostApplicationIOS/Tests/**"],
            resources: [],
            dependencies: [.target(name: "HostApplicationIOS")]
        ),
    ]
)
