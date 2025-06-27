//
//  Project+Environment.swift
//  ProjectDescriptionHelpers
//
//  Created by 유지호 on 6/26/25.
//

import Foundation
import ProjectDescription

public extension Project {
    
    static let workspaceName = "MFA"
    static let deploymentTarget = DeploymentTargets.iOS("17.0")
    static let destinations: Destinations = [Destination.iPhone]
    static let bundlePrefix = "com.mfa."
    
}


// MARK: Info.plist

public extension Project {
    
    static let defaultInfoPlist: [String: Plist.Value] = [
        "CFBundleIdentifier": .string(bundlePrefix + "release"),
        "CFBundleDisplayName": .string("MFA"),
        "UIUserInterfaceStyle": .string("Light"),
//        "UIBackgroundModes": .array([
//            .string("remote-notification")
//        ]),
        "UIAppFonts": .array([]),
        "UILaunchStoryboardName": .string("LaunchScreen"),
        "UIApplicationSceneManifest": .dictionary([
            "UIApplicationSupportsMultipleScenes": .boolean(false),
            "UISceneConfigurations": .dictionary([
                "UIWindowSceneSessionRoleApplication": .array([
                    .dictionary([
                        "UISceneConfigurationName": .string("Default Configuration"),
                        "UISceneDelegateClassName": .string("$(PRODUCT_MODULE_NAME).SceneDelegate")
                    ])
                ])
            ])
        ]),
        "NSAppTransportSecurity": .dictionary([
            "NSAllowsArbitraryLoads": .boolean(true)
        ]),
//        "NSLocationWhenInUseUsageDescription": .string("위치 정보가 필요합니다."),
//        "NSCameraUsageDescription": .string("카메라 권한이 필요합니다"),
    ]
    
    static let demoInfoPlist: [String: Plist.Value] = [
        "CFBundleIdentifier": .string(bundlePrefix + "demo"),
        "CFBundleDisplayName": .string("MFA-Demo"),
        "UIUserInterfaceStyle": .string("Light"),
//        "UIBackgroundModes": .array([
//            .string("remote-notification")
//        ]),
        "UIAppFonts": .array([]),
        "UILaunchStoryboardName": .string("LaunchScreen"),
        "UIApplicationSceneManifest": .dictionary([
            "UIApplicationSupportsMultipleScenes": .boolean(false),
            "UISceneConfigurations": .dictionary([
                "UIWindowSceneSessionRoleApplication": .array([
                    .dictionary([
                        "UISceneConfigurationName": .string("Default Configuration"),
                        "UISceneDelegateClassName": .string("$(PRODUCT_MODULE_NAME).SceneDelegate")
                    ])
                ])
            ])
        ]),
        "NSAppTransportSecurity": .dictionary([
            "NSAllowsArbitraryLoads": .boolean(true)
        ]),
//        "NSLocationWhenInUseUsageDescription": .string("위치 정보가 필요합니다."),
//        "NSCameraUsageDescription": .string("카메라 권한이 필요합니다"),
    ]
        
}
