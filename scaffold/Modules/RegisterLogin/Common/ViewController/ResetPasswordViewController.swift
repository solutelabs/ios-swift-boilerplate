//
//  ResetPasswordViewController.swift
//  scaffold
//
//  Created by sl-mini on 19/07/21.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    func style() {
        txtEmail.setLeftPadding()
        txtEmail.ovalShape()
        self.view.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        btnNext.setOvalButtonWithShadow()
    }
    
    @IBAction func onNext(_ sender: Any) {
        // Validate The email Id
        // Redirect to Check your mail
        redirectToCheckYourEmail()
    }
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func redirectToCheckYourEmail() {
        // swiftlint:disable force_cast
        let viewController = self.storyboard?.instantiateViewController(identifier:
                                                                            StorybordIndetifiersList.checkEmailViewController.rawValue) as! CheckEmailViewController
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true, completion: nil)
        // swiftlint:enable force_cast
    }
    
//    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
//        let path = UIBezierPath(roundedRect: self.view.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//            let mask = CAShapeLayer()
//            mask.path = path.cgPath
//        self.view.layer.mask = mask
//        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
