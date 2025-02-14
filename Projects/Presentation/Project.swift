//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 한지석 on 1/12/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let moduleName = "Presentation"

let project = Project.makeModule(name: moduleName,
                                 destinations: [.iPhone],
                                 product: .staticFramework,
                                 bundleId: "Presentation",
                                 dependencies: [
                                    .Project.Domain,
                                    .Project.Core
                                 ])
