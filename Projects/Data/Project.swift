//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 한지석 on 1/12/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

private let moduleName = "Data"

let project = Project.makeModule(name: moduleName,
                                 destinations: [.iPhone],
                                 product: .staticFramework,
                                 bundleId: "Data",
                                 dependencies: [
                                    .Project.Domain,
                                    .Project.Core
                                 ])
