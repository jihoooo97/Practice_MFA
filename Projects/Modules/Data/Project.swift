//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "Data",
    targets: [.staticFramework],
    moduleDependencies: [
        .Module.Domain.project
    ]
)
