//
//  LoginViewController.swift
//  scaffold
//
//  Created by sl-mini on 15/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    func style() {
        
        txtEmail.ovalShape()
        txtEmail.setLeftPadding()
        
        txtPassword.ovalShape()
        txtPassword.setLeftPadding()
        
        btnLogin.setOvalButtonWithShadow()
        
        lblError.layer.cornerRadius = 20
        lblError.clipsToBounds = true
        
    }


}
