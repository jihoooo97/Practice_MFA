//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "AFeature",
    targets: [.staticFramework, .interface, .unitTest, .demo],
    featureDependencies: [],
    interfaceDependencies: [
        .Feature.BaseFeature
    ],
    moduleDependencies: []
)
