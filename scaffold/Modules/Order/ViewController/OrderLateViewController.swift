//
//  OrderLateViewController.swift
//  scaffold
//
//  Created by sl-mini on 27/07/21.
//

import UIKit

class OrderLateViewController: UIViewController {

    @IBOutlet weak var btnGotit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnGotit.setOvalButtonWithShadow()
    }
    
    @IBAction func onbtnGotItTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
