//
//  TSignupViewController.swift
//  scaffold
//
//  Created by sl-mini on 14/07/21.
//

import UIKit

class SignupViewController: UIViewController {

    // MARK: - IBOutlet Deceleration
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pickerDOB: UIDatePicker!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtGrade: UITextField!
    @IBOutlet weak var txtSchool: UITextField!
    @IBOutlet weak var txtDOB: UITextField!
    
    var bizCat = ["Cat One", "Cat Two", "Cat Three"]
    var user: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        setupUIAsUser()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        // Check for validation
        
        // redirect to Password
        redirectToPasswordViewController()
    }
    
    func style() {
        txtName.setLeftPadding()
        txtEmail.setLeftPadding()
        txtGrade.setLeftPadding()
        txtSchool.setLeftPadding()
        txtDOB.setLeftPadding()
        
        txtGrade.ovalShape()
        txtSchool.ovalShape()
        txtEmail.ovalShape()
        txtDOB.ovalShape()
        txtName.ovalShape()
        
        btnNext.setOvalButtonWithShadow()
        txtGrade.setRightImage()
        txtSchool.setRightImage()
        txtDOB.setRightImage()
        
    }
    
    func setupUIAsUser () {
        if user == Constant.student {
            
        } else if user == Constant.parent {
            
        } else {
            // Teacher
            
        }
    }
    
    func redirectToPasswordViewController() {
        
        // swiftlint:disable force_cast
        let viewController = self.storyboard?.instantiateViewController(identifier:
                                                                            StorybordIndetifiersList.passwordViewController.rawValue) as! PasswordViewController
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true, completion: nil)
        // swiftlint:enable force_cast
    }
    
}
