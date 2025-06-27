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
        
        public var project: TargetDependency {
            .project(
                target: "\(self)Feature",
                path: .relativeToRoot("Projects/Features/\(self)Feature")
            )
        }
        
        public var interface: TargetDependency {
            .project(
                target: "\(self)Interface",
                path: .relativeToRoot("Projects/Features/\(self)FeatureInterface")
            )
        }
        
        public static let RootFeature = TargetDependency.project(
            target: "RootFeature",
            path: .relativeToRoot("Projects/Features/RootFeature")
        )
        
        public static let BaseFeature = TargetDependency.project(
            target: "BaseFeature",
            path: .relativeToRoot("Projects/Features/BaseFeature")
        )
    }
    
    
    enum Module {
        case Core
        case Data
        case Domain
        case UIComponent
        
        public var project: TargetDependency {
            .project(
                target: "\(self)",
                path: .relativeToRoot("Projects/Modules/\(self)")
            )
        }
    }
    
    
    enum Library {
        public static let SnapKit = TargetDependency.external(name: "SnapKit")
        
        public static let RxSwift = TargetDependency.external(name: "RxSwift")
        public static let RxCocoa = TargetDependency.external(name: "RxCocoa")
        public static let RxDatasources = TargetDependency.external(name: "RxDataSources")
        
        public static let Moya = TargetDependency.external(name: "Moya")
        public static let RxMoya = TargetDependency.external(name: "RxMoya")
        
        public static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    }
    
}
