//
//  StorybordHelper.swift
//  scaffold
//
//  Created by sl-mini on 21/07/21.
//

import UIKit

enum AppStoryboard: String {
    
    case main = "Main"
    case search = "Search"
    case menuOrder = "MenuOrder"
    case checkout = "Checkout"
    
    var instance: UIStoryboard {
      return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
}

// How to access the Storyboard
// let storyboard = AppStoryboard.Main.instance
// Old Way
// let storyboard = UIStoryboard(name: “Main”, bundle: Bundle.main)
