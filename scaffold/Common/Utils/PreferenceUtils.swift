//
//  PreferenceUtils.swift
//  scaffold
//
//  Created by sl-mini on 9/8/2022.
//

import Foundation
class PreferenceUtils {
    static func putString(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    static func getString(key: String) -> String? {
        return  UserDefaults.standard.string(forKey: key)
    }
    static func putInteger(key: String, value: Int) {
        UserDefaults.standard.set(value, forKey: key)
    }
    static func getInteger(key: String) -> Int? {
        return  UserDefaults.standard.integer(forKey: key)
    }
    static func putBoolean(key: String, value: Bool) {
        UserDefaults.standard.set(value, forKey: key)
    }
    static func getBoolean(key: String) -> Bool {
        return  UserDefaults.standard.bool(forKey: key)
    }
    static func putObject(key: String, value: [String]) {
        UserDefaults.standard.set(value, forKey: key)
    }
    static func putarray(key: String, value: [String]) {
        UserDefaults.standard.set(value, forKey: key)
    }
    static func getarray(key: String) -> [String]? {
        return UserDefaults.standard.stringArray(forKey: key)
    }
}
struct PreferenceKeys {
    static let PREFERENCENAME = "scaffold.io.preference_"
}
