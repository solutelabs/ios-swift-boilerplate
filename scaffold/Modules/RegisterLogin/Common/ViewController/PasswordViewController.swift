//
//  PasswordViewController.swift
//  scaffold
//
//  Created by sl-mini on 14/07/21.
//

import UIKit

class PasswordViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       style()
    }
    
    // MARK: - Helper
    func style() {
        txtPassword.ovalShape()
        txtConfirmPassword.ovalShape()
        
        txtPassword.setLeftPadding()
        txtConfirmPassword.setLeftPadding()
        
        btnRegister.setOvalButtonWithShadow()
    }
    
    @IBAction func onRegisterTapped(_ sender: Any) {
    }
    
    @IBAction func onLoginTapped(_ sender: Any) {
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
