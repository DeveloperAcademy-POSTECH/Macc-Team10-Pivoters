import ProjectDescription

extension Project {

  private static let organizationName = "com.pivoters."

  public static func makeModule(
    name: String,
    destinations: Destinations,
    product: Product,
    bundleId: String,
    deploymentTarget: DeploymentTargets = .iOS(
      "17.0"
    ),
    infoPlist: InfoPlist = .default,
    sources: SourceFilesList = ["Sources/**"],
    resources: ResourceFileElements? = nil,
    entitlements: Entitlements? = nil,
    dependencies: [TargetDependency] = [],
    target: Target? = nil
  ) -> Project {

    let mainTarget = Target.target(
      name: name,
      destinations: destinations,
      product: product,
      bundleId: organizationName + bundleId,
      deploymentTargets: deploymentTarget,
      infoPlist: infoPlist,
      sources: sources,
      resources: resources,
      entitlements: entitlements,
      scripts: [.SwiftLintString],
      dependencies: dependencies
    )

    let testTarget = Target.target(
      name: "\(name)Tests",
      destinations: destinations,
      product: .unitTests,
      bundleId: organizationName + bundleId + name + "Tests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(
          name: "\(name)"
        )
      ]
    )

    var targets: [Target] = [
      mainTarget,
      testTarget
    ]

    if let target = target {
      targets.append(
        target
      )
    }

    return Project(
      name: name,
      organizationName: organizationName,
      targets: targets
    )
  }
}
