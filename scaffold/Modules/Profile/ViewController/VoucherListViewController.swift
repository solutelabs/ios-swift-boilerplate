//
//  VoucherListViewController.swift
//  scaffold
//
//  Created by sl-mini on 30/07/21.
//

import UIKit

class VoucherListViewController: UIViewController {

    @IBOutlet weak var lblVoucherDate: UILabel!
    @IBOutlet weak var lblCode: UILabel!
    @IBOutlet weak var lblVoucerName: UILabel!
    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    func style() {
        btnSave.layer.cornerRadius = 10
        btnSave.clipsToBounds = true
        
        lblCode.layer.cornerRadius = 10
        lblCode.clipsToBounds = true
        
    }
    
    @IBAction func onbtnBackTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onbtnCopyTapped(_ sender: Any) {
        UIPasteboard.general.string = lblCode.text
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
