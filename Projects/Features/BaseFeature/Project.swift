//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "BaseFeature",
    targets: [.dynamicFramework],
    moduleDependencies: [
        .Module.Domain.project,
        .Module.UIComponent.project
    ]
)
