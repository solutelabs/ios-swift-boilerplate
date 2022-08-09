//
//  EnvironmentUtils.swift

import Foundation
/// How we can access the Enviroment variable
/// Environment().configuration(PlistKey.BASEURL)
/// Add above line of code in any file where you want to access.

public enum PlistKey {
    case BASEURL

    func value() -> String {
        switch self {
        case .BASEURL:
            return "BASE_URL"
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
        }
    }
}
