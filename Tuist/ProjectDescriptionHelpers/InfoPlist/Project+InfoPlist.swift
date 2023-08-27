import Foundation
import ProjectDescription

public func getMainIOSInfoPlist() -> ProjectDescription.InfoPlist {
  return .dictionary([
    "GADApplicationIdentifier": .string("\(adMobAppID)"),
    "SKAdNetworkItems": .array([
      .dictionary([
        "SKAdNetworkIdentifier": .string("\(identifiersGoogleSKAdNetwork)"),
      ])
    ]),
    "MARKETING_VERSION": .string("\(marketingVersion)"),
    "CFBundleIconName": .string("AppIcon"),
    "CFBundleShortVersionString": .string("\(marketingVersion)"),
    "CFBundleVersion": .string("\(currentProjectVersion)"),
    "CURRENT_PROJECT_VERSION": .string("\(currentProjectVersion)"),
    "PRODUCT_BUNDLE_IDENTIFIER": .string("\(bundle)"),
    "DISPLAY_NAME": .string("\(appName) \(ai)"),
    "UISupportsDocumentBrowser": .boolean(true),
    "CFBundleAllowMixedLocalizations": .boolean(true),
    "NSUserTrackingUsageDescription": .string("We use user data to provide more personalized content and improve your app experience."),
    "CFBundleURLTypes": .array([
      .dictionary([
        "CFBundleTypeRole": .string("Editor"),
        "CFBundleURLName": .string("\(reverseOrganizationName).Deeplink"),
        "CFBundleURLSchemes": .array([
          .string("\(schemesURL)")
        ])
      ])
    ]),
    "com.apple.developer.associated-domains": .array([
      .string("applinks:\(applinksPageLink)"),
      .string("applinks:\(applinksAvatarsLink)")
    ]),
    "CFBundleDocumentTypes": .array([
      .dictionary([
        "CFBundleTypeExtensions": .array([
          .string("png"),
          .string("jpg"),
          .string("jpeg")
        ]),
        "CFBundleTypeName": .string("Image"),
        "CFBundleTypeRole": .string("Editor"),
        "LSHandlerRank": .string("Owner")
      ])
    ]),
    "IPHONEOS_DEPLOYMENT_TARGET": .string("\(iOSversion)"),
    "CFBundleExecutable": .string("\(appName)"),
    "TAB_WIDTH": .string("2"),
    "INDENT_WIDTH": .string("2"),
    "DEVELOPMENT_TEAM": .string("\(developmentTeam)"),
    "LSSupportsOpeningDocumentsInPlace": .boolean(true),
    "CFBundleLocalizations": .array([
      .string("en"),
      .string("ru")
    ]),
    "CODE_SIGN_STYLE": .string("Automatic"),
    "CODE_SIGN_IDENTITY": .string("iPhone Developer"),
    "ENABLE_BITCODE": .string("NO"),
    "CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED": .string("YES"),
    "ENABLE_TESTABILITY": .string("YES"),
    "VALID_ARCHS": .string("arm64"),
    "DTPlatformVersion": .string("\(iOSversion)"),
    "CFBundleName": .string("\(appName) \(ai)"),
    "CFBundleDisplayName": .string("\(appName) \(ai)"),
    "CFBundleIdentifier": .string("\(bundle)"),
    "LSApplicationCategoryType": .string("public.app-category.photo-video"),
    "ITSAppUsesNonExemptEncryption": .boolean(false),
    "TARGETED_DEVICE_FAMILY": .string("1,2"),
    "UIRequiresFullScreen": .boolean(true),
    "UILaunchStoryboardName": .string("LaunchScreen.storyboard"),
    "UIApplicationSupportsIndirectInputEvents": .boolean(true),
    "CFBundlePackageType": .string("APPL"),
    "NSCameraUsageDescription": .string("Please provide access to the Camera"),
    "NSAccentColorName": .string("AccentColor"),
    "CFBundleInfoDictionaryVersion": .string("6.0"),
    "NSPhotoLibraryUsageDescription": .string("Please provide access to the Photo Library"),
    "DTXcode": .integer(1420),
    "LSRequiresIPhoneOS": .boolean(true),
    "DTCompiler": .string("com.apple.compilers.llvm.clang.1_0"),
    "UIStatusBarStyle": .string("UIStatusBarStyleLightContent"),
    "CFBundleDevelopmentRegion": .string("en"),
    "DTSDKBuild": .string("20C52"),
    "DTPlatformBuild": .string("20C52"),
    "DTPlatformName": .string("iphoneos"),
    "DTXcodeBuild": .string("14C18"),
    "NSPhotoLibraryAddUsageDescription": .string("Please provide access to the Photo Library"),
    "UISupportedInterfaceOrientations~ipad": .array([
      .string("UIInterfaceOrientationPortrait")
    ]),
    "UISupportedInterfaceOrientations": .array([
      .string("UIInterfaceOrientationPortrait")
    ]),
    "UIStatusBarHidden": .boolean(false)
  ])
}
