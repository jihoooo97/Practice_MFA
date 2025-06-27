//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "Domain",
    targets: [.dynamicFramework],
    moduleDependencies: [
        .Module.Core.project
    ]
)
