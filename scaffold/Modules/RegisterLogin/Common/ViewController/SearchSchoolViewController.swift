//
//  SearchSchoolViewController.swift
//  scaffold
//
//  Created by sl-mini on 15/07/21.
//

import UIKit

class SearchSchoolViewController: UIViewController {

    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var lblStudent: UILabel!
    @IBOutlet weak var btnConfirm: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // searchbar.setImage(UIImage(), for: .search, state: .normal)
        // searchbar.setPositionAdjustment(UIOffset(horizontal: 10, vertical: 0), for: .search)
        // searchbar.showSearchIconInRight()
        style()
    }
    
    func style() {
        btnConfirm.setOvalButtonWithShadow()
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

extension UISearchBar {
    
    func showSearchIconInRight() {
       
//        showsBookmarkButton = true
//        if let btn = searchTextField.rightView as? UIButton {
//            btn.setImage(UIImage(), for: .normal)
//            btn.setImage(UIImage(), for: .highlighted)
//        }
        
    }
}
