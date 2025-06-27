//
//  Configurations.swift
//  ProjectDescriptionHelpers
//
//  Created by 유지호 on 6/26/25.
//

import Foundation
import ProjectDescription

public enum XCConfig {
    case framework
    case demo
    case test
    case custom(name: String)
    
    var path: Path {
        switch self {
        case .framework:
                .relativeToRoot("Configurations/SecretKeys-Framework.xcconfig")
        case .demo:
                .relativeToRoot("Configurations/SecretKeys-Demo.xcconfig")
        case .test:
                .relativeToRoot("Configurations/SecretKeys-Test.xcconfig")
        case .custom(let name):
                .relativeToRoot("Configurations/\(name).xcconfig")
        }
    }
    
    var configurations: [Configuration] {
        [
            .debug(name: "Develop", xcconfig: path),
//            .debug(name: "Test", xcconfig: path),
//            .release(name: "QA", xcconfig: path),
            .release(name: "Release", xcconfig: path)
        ]
    }
}
