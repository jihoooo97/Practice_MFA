//
//  Module.swift
//  Templates
//
//  Created by 유지호 on 6/27/25.
//

import ProjectDescription

// 테스트가 있는지, 리소스가 있는지.
let nameAttribute: Template.Attribute = .required("name")
let includeAttribute: Template.Attribute = .optional("include", default: .string("tests"))

let template = Template(
    description: "Module Template",
    attributes: [
        nameAttribute
    ],
    items: "\(includeAttribute)" == "Resource"
    ? [ModuleTemplate.project, ModuleTemplate.sources, ModuleTemplate.derived].flatMap { $0.item }
    : ModuleTemplate.allCases.flatMap { $0.item }
)


enum ModuleTemplate: CaseIterable {
    case project, sources, derived, tests

    var basePath: String {
        "Projects/Modules/\(nameAttribute)"
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
        }
    }
    
    var item: [Template.Item] {
        switch self {
        case .project:
            [.file(path: path + "/Project.swift", templatePath: "Project.stencil")]
        case .sources: "\(includeAttribute)" == "Resource"
            ? [.file(path: path + "/Empty.swift", templatePath: "Empty.stencil"),
               .directory(path: path + "/Resources", sourcePath: "Assets.xcassets")]
            : [.file(path: path + "/Empty.swift", templatePath: "Empty.stencil")]
        case .derived:
            [.file(path: path + "/InfoPlists/Info.plist", templatePath: "Info.plist")]
        case .tests:
            [.file(path: path + "/Sources/\(nameAttribute)Tests.swift", templatePath: "Tests.stencil")]
        }
    }
}
