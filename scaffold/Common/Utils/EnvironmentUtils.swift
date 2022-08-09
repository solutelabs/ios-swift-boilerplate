//
//  EnvironmentUtils.swift
//
//  /// How we can access the Enviroment variable
//  /// Environment().configuration(PlistKey.BASEURL)
//  /// Add above line of code in any file where you want to access.
//  
import Foundation

public enum PlistKey {
    case BASEURL
    case APPENVIRONMENT

    func value() -> String {
        switch self {
        case .BASEURL:
            return "BASE_URL"
        case .APPENVIRONMENT:
            return "AppEnvironment"
        }
    }
}
public struct Environment {

    fileprivate var infoDict: [String: Any] {
        if let dict = Bundle.main.infoDictionary {
            return dict
        } else {
            fatalError("Plist file not found")
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .BASEURL:
            return infoDict[PlistKey.BASEURL.value()] as! String
        case .APPENVIRONMENT:
            return infoDict[PlistKey.APPENVIRONMENT.value()] as! String
        }
    }
}
