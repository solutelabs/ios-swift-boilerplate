//
//  HomeViewModel.swift
//  scaffold
//
//  Created by stl-037 on 03/03/21.
//

import Foundation

class HomeViewModel {
    
    func getCurrenEnvironment() -> String {
        return "\(Environment().configuration(PlistKey.APPENVIRONMENT))"
    }
}
