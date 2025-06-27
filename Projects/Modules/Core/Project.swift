//
//  Project.swift
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.createModule(
    name: "Core",
    targets: [.dynamicFramework],
    externalDependencies: [
        .Library.SnapKit
    ]
)
