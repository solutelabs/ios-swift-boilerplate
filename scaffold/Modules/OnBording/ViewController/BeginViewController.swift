//
//  BeginViewController.swift
//  scaffold
//
//  Created by sl-mini on 19/07/21.
//

import UIKit

class BeginViewController: UIViewController {

    @IBOutlet weak var lblUser: UILabel!
    @IBOutlet weak var btnGetStarted: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    var user: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUser.text = user
        style()
    }
    
    func style() {
        btnGetStarted.setOvalButtonWithShadow()
        btnLogin.setOvalButtonWithShadow()
    }
    
    @IBAction func onTapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onGetStartedTapped(_ sender: Any) {
        // swiftlint:disable force_cast
        if user == Constant.teacher {
            let viewController = self.storyboard?.instantiateViewController(identifier:
                                                                                StorybordIndetifiersList.signupViewController.rawValue) as! SignupViewController
                viewController.modalPresentationStyle = .fullScreen
                self.present(viewController, animated: true, completion: nil)
        } else {
            let viewController = self.storyboard?.instantiateViewController(identifier:
                                                                                StorybordIndetifiersList.parentStudentSignupViewController.rawValue) as! PSSignupViewController
                viewController.modalPresentationStyle = .fullScreen
                self.present(viewController, animated: true, completion: nil)
        }
        // swiftlint:enable force_cast
    }
    
    @IBAction func onLoginTapped(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? SignupViewController
        viewController?.user = lblUser.text!
        
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
