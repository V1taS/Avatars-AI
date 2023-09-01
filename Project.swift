import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Setup project

let project = Project(
  name: appName,
  organizationName: organizationName,
  options: .options(automaticSchemesOptions: .disabled),
  settings: projectBuildIOSSettings,
  targets: [
    Target(
      name: appName,
      platform: .iOS,
      product: .app,
      bundleId: "\(bundle)",
      deploymentTarget: .iOS(targetVersion: "\(iOSversion)", devices: [.iphone, .ipad]),
      infoPlist: getMainIOSInfoPlist(),
      sources: [
        "\(rootPath)/\(appPath)/Sources/**/*",
      ],
      resources: [
        "\(rootPath)/\(appPath)/Resources/**/*",
      ],
      entitlements: .relativeToRoot("\(rootPath)/\(appPath)/Entity/\(appName).entitlements"),
      scripts: [
        scriptSwiftLint
      ],
      dependencies: [
        .external(name: "FancySwiftUI"),
        //        .external(name: "FancyNetwork"),
        //        .external(name: "FancyNotifications"),
        //        .external(name: "ApphudSDK"),
        //        .external(name: "KeychainSwift"),
        //        .external(name: "YandexMobileMetricaPush"),
        //        .external(name: "YandexMobileMetrica"),
        //        .external(name: "FirebaseDynamicLinks"),
        //        .external(name: "FirebaseAnalytics"),
        //        .external(name: "FirebaseFirestore"),
        //        .external(name: "FirebaseAuth"),
        //        .external(name: "FirebaseRemoteConfig"),
        //        .external(name: "GoogleMobileAds"),
          .external(name: "ComposableArchitecture")
      ],
      settings: targetBuildIOSSettings
    ),
    Target(
      name: "\(appName)Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "\(bundleTest)",
      deploymentTarget: .iOS(targetVersion: "\(iOSversion)", devices: [.iphone, .ipad]),
      infoPlist: .default,
      sources: [
        "\(rootPath)/\(appPath)/Tests/**/*"
      ],
      dependencies: [
        .target(name: "\(appName)"),
      ],
      settings: targetBuildTestsSettings
    )
  ],
  schemes: [mainIOSScheme, mainTestsIOSScheme]
)
