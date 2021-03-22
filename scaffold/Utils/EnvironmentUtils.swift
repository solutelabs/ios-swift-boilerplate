//
//  EnvironmentUtils.swift
//  Liminal
//
//  Created by stl-037 on 02/03/21.
//

import Foundation

enum Environment: String {
    
    case dev, stage, prod, unknown
    
    static var current: Environment {
        guard let environmentName = Bundle.main.object(forInfoDictionaryKey: "AppEnvironment") as? String
            else { fatalError("Unknown application environment") }
        
        guard let environment = Environment(rawValue: environmentName)
            else { fatalError("""
                Environment inference failed!
                Environment Name:\(environmentName)
                There is no environment type configured for above name inside app
                """) }
        
        return environment
    }
    
}
