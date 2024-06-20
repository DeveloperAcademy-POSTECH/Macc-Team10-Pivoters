//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 한지석 on 11/6/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let moduleName = "Common"

let project = Project.makeModule(name: moduleName,
                                 destinations: [.iPhone],
                                 product: .staticFramework,
                                 bundleId: "Common",
                                 resources: ["Resources/**"],
                                 dependencies: [.Project.Core])
