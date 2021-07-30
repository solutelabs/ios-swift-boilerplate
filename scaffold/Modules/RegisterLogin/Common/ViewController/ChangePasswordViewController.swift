//
//  ChangePasswordViewController.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    func style() {
        btnSave.setOvalButtonWithShadow()
        txtPassword.ovalShape()
        txtConfirmPassword.ovalShape()
        
        txtConfirmPassword.setLeftPadding()
        txtPassword.setLeftPadding()
    }
    
    @IBAction func onbtnSaveTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnCancelTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onbtnClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
