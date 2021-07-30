//
//  AddCardViewController.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class AddCardViewController: UIViewController {

    @IBOutlet weak var txtCardNumber: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtExp: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var txtCvv: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        txtExp.delegate = self
    }
    
    func style() {
        txtName.ovalShape()
        txtExp.ovalShape()
        txtExp.ovalShape()
        txtCvv.ovalShape()
       
        txtCardNumber.withImage(direction: .left, image: #imageLiteral(resourceName: "card"), colorSeparator: UIColor.clear, colorBorder: UIColor.clear)
        txtCvv.withImage(direction: .left, image: #imageLiteral(resourceName: "cvv"), colorSeparator: UIColor.clear, colorBorder: UIColor.clear)
        txtExp.withImage(direction: .left, image: #imageLiteral(resourceName: "exp"), colorSeparator: UIColor.clear, colorBorder: UIColor.clear)
        txtName.withImage(direction: .left, image: #imageLiteral(resourceName: "name"), colorSeparator: UIColor.clear, colorBorder: UIColor.clear)

        btnSave.setOvalButtonWithShadow()
    }
    
    @IBAction func onbtnBackTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onbtnSaveTapped(_ sender: Any) {
        
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

extension AddCardViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let oldText = textField.text, let range = Range(range, in: oldText) else {
            return true
        }
        let updatedText = oldText.replacingCharacters(in: range, with: string)

        if string == "" {
            if updatedText.count == 2 {
                textField.text = "\(updatedText.prefix(1))"
                return false
            }
        } else if updatedText.count == 1 {
            if updatedText > "1" {
                return false
            }
        } else if updatedText.count == 2 {
            if updatedText <= "12" { // Prevent user to not enter month more than 12
                textField.text = "\(updatedText)/" // This will add "/" when user enters 2nd digit of month
            }
            return false
        } else if updatedText.count == 5 {
            self.expDateValidation(dateStr: updatedText)
        } else if updatedText.count > 5 {
            return false
        }

        return true
    }
    
    func expDateValidation(dateStr: String) {

        let currentYear = Calendar.current.component(.year, from: Date()) % 100
        // This will give you current year (i.e. if 2019 then it will be 19)
        let currentMonth = Calendar.current.component(.month, from: Date())
        // This will give you current month (i.e if June then it will be 6)

        let enteredYear = Int(dateStr.suffix(2)) ?? 0 // get last two digit from entered string as year
        let enteredMonth = Int(dateStr.prefix(2)) ?? 0 // get first two digit from entered string as month
        print(dateStr) // This is MM/YY Entered by user

        if enteredYear > currentYear {
            if (1 ... 12).contains(enteredMonth) {
                print("Entered Date Is Right")
            } else {
                print("Entered Date Is Wrong")
            }
        } else if currentYear == enteredYear {
            if enteredMonth >= currentMonth {
                if (1 ... 12).contains(enteredMonth) {
                   print("Entered Date Is Right")
                } else {
                   print("Entered Date Is Wrong")
                }
            } else {
                print("Entered Date Is Wrong")
            }
        } else {
           print("Entered Date Is Wrong")
        }

    }
}
