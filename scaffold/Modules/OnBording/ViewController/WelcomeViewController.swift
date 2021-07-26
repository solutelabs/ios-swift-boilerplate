//
//  WelcomeViewController.swift
//  scaffold
//
//  Created by sl-mini on 14/07/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IBOutlet Deceleration -
    
    @IBOutlet weak var btnStudent: UIButton!
    @IBOutlet weak var btnTeacher: UIButton!
    @IBOutlet weak var btnParent: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnParent.setOvalButtonWithShadow()
        btnStudent.setOvalButtonWithShadow()
        btnTeacher.setOvalButtonWithShadow()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? BeginViewController
        switch segue.identifier {
        case Constant.student :
            viewController?.user = Constant.student
        case Constant.parent:
                viewController?.user = Constant.parent
        default :
                viewController?.user = Constant.teacher
        }
        
    }
    
}
