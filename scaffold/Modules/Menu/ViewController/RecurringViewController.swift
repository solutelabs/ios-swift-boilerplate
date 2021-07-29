//
//  RecurringViewController.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class RecurringViewController: UIViewController {

    @IBOutlet weak var lblOrderId: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var btnNever: UIButton!
    @IBOutlet weak var btnMonday: UIButton!
    @IBOutlet weak var btnWednesday: UIButton!
    @IBOutlet weak var btnFriday: UIButton!
    @IBOutlet weak var btnThursday: UIButton!
    @IBOutlet weak var btnTuesday: UIButton!
    @IBOutlet weak var uvOn: UIView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnOn: UIButton!
    @IBOutlet weak var uvNever: UIView!
    @IBOutlet weak var txtRepeat: UITextField!
    @IBOutlet weak var lblTotalPrice: UILabel!
    @IBOutlet weak var lblAddOnPrice: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var lblAddon: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    func style() {
        btnOn.setImage(UIImage(), for: .normal)
        btnNever.setImage(UIImage(), for: .normal)
        uvNever.layer.borderWidth = 1
        uvNever.layer.cornerRadius = 4
        uvOn.layer.borderColor = UIColor.white.cgColor
        uvOn.layer.borderWidth = 1
        uvOn.layer.cornerRadius = 4
        uvNever.layer.borderColor = UIColor.white.cgColor
        txtRepeat.setRightImage()
        txtRepeat.ovalShape()
        circleButton(btnId: btnMonday)
        circleButton(btnId: btnTuesday)
        circleButton(btnId: btnWednesday)
        circleButton(btnId: btnThursday)
        circleButton(btnId: btnFriday)
    }
    
    func circleButton(btnId: UIButton) {
        btnId.layer.cornerRadius = btnId.frame.size.height / 2
        
        
    }
    
    @IBAction func onbtnWeekDay(_ sender: Any) {
    }
    
    @IBAction func onbtnNeverTapped(_ sender: Any) {
        btnOn.setImage(UIImage(), for: .normal)
        btnNever.setImage(#imageLiteral(resourceName: "selected"), for: .normal)
    }
    
    @IBAction func onbtnOnTapped(_ sender: Any) {
        btnNever.setImage(UIImage(), for: .normal)
        btnOn.setImage(#imageLiteral(resourceName: "selected"), for: .normal)
    }
    
    @IBAction func onbtnNextTapped(_ sender: Any) {
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
