//
//  AddStudentViewController.swift
//  scaffold
//
//  Created by sl-mini on 15/07/21.
//

import UIKit

class AddStudentViewController: UIViewController {

    
    @IBOutlet weak var btnDoItLater: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        // Do any additional setup after loading the view.
    }
    
    func style() {
        btnDoItLater.setOvalButtonWithShadow()
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
