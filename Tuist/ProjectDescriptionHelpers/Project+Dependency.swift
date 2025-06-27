//
//  Project+Dependency.swift
//  ProjectDescriptionHelpers
//
//  Created by 유지호 on 6/26/25.
//

import ProjectDescription

public extension TargetDependency {
    
    enum Feature {
        case A, B, C, D
        
        var project: TargetDependency {
            .project(
                target: "\(self)Feature",
                path: .relativeToRoot("Projects/Features/\(self)Feature")
            )
        }
        
        var interface: TargetDependency {
            .project(
                target: "\(self)Interface",
                path: .relativeToRoot("Projects/Features/\(self)FeatureInterface")
            )
        }
        
        static let RootFeature = TargetDependency.project(
            target: "RootFeature",
            path: .relativeToRoot("Projects/Features/RootFeature")
        )
        
        static let BaseFeature = TargetDependency.project(
            target: "BaseFeature",
            path: .relativeToRoot("Projects/Features/BaseFeature")
        )
    }
    
    
    enum Module {
        case Core
        case Data
        case Domain
        case UIComponent
        
        var project: TargetDependency {
            .project(
                target: "\(self)",
                path: .relativeToRoot("Projects/Modules/\(self)")
            )
        }
    }
    
    
    enum Library {
        static let SnapKit = TargetDependency.external(name: "SnapKit")
        
        static let RxSwift = TargetDependency.external(name: "RxSwift")
        static let RxCocoa = TargetDependency.external(name: "RxCocoa")
        static let RxDatasources = TargetDependency.external(name: "RxDataSources")
        
        static let Moya = TargetDependency.external(name: "Moya")
        static let RxMoya = TargetDependency.external(name: "RxMoya")
        
        static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    }
    
}
