//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "RootFeature",
    targets: [.staticFramework, .demo],
    featureDependencies: [
        .Feature.A.project,
        .Feature.B.project,
        .Feature.C.project,
        .Feature.D.project
    ]
)
