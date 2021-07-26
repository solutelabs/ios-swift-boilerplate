//
//  PSSignupViewController.swift
//  scaffold
//
//  Created by sl-mini on 19/07/21.
//

import UIKit

class PSSignupViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    func style() {
        txtName.setLeftPadding()
        txtEmail.setLeftPadding()
        txtSurname.setLeftPadding()
        
        txtEmail.ovalShape()
        txtSurname.ovalShape()
        txtName.ovalShape()
    
        btnNext.setOvalButtonWithShadow()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        //Validate the Text Feild
        //Redirect to password page
        redirectToPasswordViewController()
    }
    
    
    func redirectToPasswordViewController() {
        
        // swiftlint:disable force_cast
        let viewController = self.storyboard?.instantiateViewController(identifier:
                                                                            StorybordIndetifiersList.passwordViewController.rawValue) as! PasswordViewController
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true, completion: nil)
        // swiftlint:enable force_cast
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
