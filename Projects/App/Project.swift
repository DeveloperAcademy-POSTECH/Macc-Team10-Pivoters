//
//  Project.swift
//  Macc-Team10-PivotersManifests
//
//  Created by 한지석 on 11/6/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let moduleName = "App"

let infoPlist: [String: Plist.Value] = [
    "CFBundleShortVersionString": "1.2.0",
    "CFBundleVersion": "1",
    "CFBundleDisplayName": "Linable",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen",
    "NSPhotoLibraryAddUsageDescription": "to let you export images to photo library",
    "CFBundleAllowMixedLocalizations": "true",
    "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
    "LSApplicationCategoryType": "public.app-category.sports",
    "UIUserInterfaceStyle": "Light"
]

let project = Project.makeModule(name: moduleName,
                                 destinations: [.iPhone],
                                 product: .app,
                                 bundleId: "app.linable",
                                 infoPlist: .extendingDefault(with: infoPlist),
                                 resources: ["Resources/**"],
                                 dependencies: [
                                    .Project.Common,
                                    .Project.Core,
                                    .Project.Feature,
                                    .Project.Domain,
                                    .Project.Data,
                                    .Project.Presentation
                                 ])
