//
//  PersonalViewController.swift
//  scaffold
//
//  Created by sl-mini on 15/07/21.
//

import UIKit

class PersonalViewController: UIViewController {

    @IBOutlet weak var imgProfilePicture: UIImageView!
    
    @IBOutlet weak var txtSchool: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtGrade: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    func style() {
        txtName.ovalShape()
        txtSchool.ovalShape()
        txtSurname.ovalShape()
        txtGrade.ovalShape()
        txtEmail.ovalShape()
        
        txtName.setLeftPadding()
        txtSchool.setLeftPadding()
        txtSurname.setLeftPadding()
        txtGrade.setLeftPadding()
        txtEmail.setLeftPadding()
        
        txtSchool.setRightImage()
        txtGrade.setRightImage()
        
        btnNext.setOvalButtonWithShadow()
    }
    
    @IBAction func onbtnCloseTapped(_ sender: Any) {
    }
    
    @IBAction func onBtnNextTapped(_ sender: Any) {
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
