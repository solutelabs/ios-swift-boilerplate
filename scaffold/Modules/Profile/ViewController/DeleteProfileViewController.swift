//
//  DeleteProfileViewController.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

class DeleteProfileViewController: UIViewController {

    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var uvPopup: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
                
        self.view.addGestureRecognizer(tapGesture)
        style()
    }
    
    func style() {
        uvPopup.layer.cornerRadius = 12
        uvPopup.clipsToBounds = true
        btnDelete.layer.cornerRadius = 20
        btnDelete.clipsToBounds = true
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
            dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onCancelTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onDeleteTapped(_ sender: Any) {
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
