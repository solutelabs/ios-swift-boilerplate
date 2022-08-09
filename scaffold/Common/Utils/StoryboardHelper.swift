//
//  StoryboardHelper.swift
//  scaffold
//
//  Created by sl-mini on 9/8/2022.
//  ///     How to Use the file for redirection from code
//  ///         let vc = LoginVC.instantiate(fromAppStoryboard: .main)
//  ///         self.navigationController?.pushViewController(vc, animated: true)
//

import UIKit

enum AppStoryboard: String {
    // MARK: - Enum -
    case Main

    // MARK: - Storyboard instance -
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }

    // MARK: - View Controller Storyboard Id
    func viewController<T: UIViewController>(viewControllerClass: T.Type,
                                             function: String = #function,
                                             line: Int = #line, file: String = #file) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardID) as? T else {

            fatalError("""
                        ViewController with identifier \(storyboardID),not found in \(self.rawValue) Storyboard.
                    File : \(file)
                    Line Number : \(line)
                    Function : \(function)
                    """)
        }
        return scene
    }

    // MARK: - ViewController Object -

    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}
