//
//  DashboardViewController.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class DashboardViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // for viewcontroller in self.viewControllers! {
            // viewcontroller.tabBarItem.title = ""
            // viewcontroller.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: 0, right: 0)
        // }
//        tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
//        tabBarItem.title = nil
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        var newTabBarFrame = tabBar.frame
        newTabBarFrame.size.height = 91
        newTabBarFrame.origin.y = self.view.frame.size.height - 91
        tabBar.frame = newTabBarFrame
        tabBar.backgroundColor = UIColor.white
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


