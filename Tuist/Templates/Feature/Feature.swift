//
//  Feature.swift
//  Templates
//
//  Created by 유지호 on 6/27/25.
//

import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Feature Template",
    attributes: [
        nameAttribute
    ],
    items: FeatureTemplate.allCases.flatMap { $0.item }
)


enum FeatureTemplate: CaseIterable {
    case project, sources, derived, tests, demo

    var basePath: String {
        "Projects/Features/\(nameAttribute)Feature"
    }
    
    var templatePath: String {
        "Tuist/Templates/"
    }
    
    var path: String {
        switch self {
        case .project:
            basePath
        case .sources:
            basePath + "/Sources"
        case .derived:
            basePath + "/Derived"
        case .tests:
            basePath + "/Tests"
        case .demo:
            basePath + "/Demo"
        }
    }
    
    var item: [Template.Item] {
        switch self {
        case .project:
            [.file(path: path + "/Project.swift", templatePath: "Project.stencil")]
        case .sources:
            [.file(path: path + "/Empty.swift", templatePath: .relativeToRoot(templatePath + "Empty.stencil"))]
        case .derived:
            [.file(path: path + "/InfoPlists/Info.plist", templatePath: .relativeToRoot(templatePath + "Info.plist"))]
        case .tests:
            [.file(
                path: path + "/Sources/\(nameAttribute)FeatureTests.swift",
                templatePath: .relativeToRoot(templatePath + "Tests.stencil")
            )]
        case .demo:
            [.file(
                path: path + "/Sources/AppDelegate.swift",
                templatePath: "AppDelegate.stencil"
            ),
             .file(
                path: path + "/Sources/SceneDelegate.swift",
                templatePath: "SceneDelegate.stencil"
             ),
             .directory(
                path: path + "/Resources",
                sourcePath: .relativeToRoot(templatePath + "Assets.xcassets")
             )]
        }
    }
}
