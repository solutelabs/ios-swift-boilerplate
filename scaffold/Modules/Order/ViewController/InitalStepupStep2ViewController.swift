//
//  InitalStepupStep2ViewController.swift
//  scaffold
//
//  Created by sl-mini on 27/07/21.
//

import UIKit

class InitalStepupStep2ViewController: UIViewController {

    
    @IBOutlet weak var btnSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    func style() {
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
