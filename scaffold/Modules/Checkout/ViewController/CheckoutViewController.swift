//
//  CheckoutViewController.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

class CheckoutViewController: UIViewController {

    @IBOutlet weak var imgProfilePhoto: UIImageView!
    @IBOutlet weak var lblOrderDetails: UILabel!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var tblCheckout: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        
    }
    
    func style() {
        btnNext.setOvalButtonWithShadow()
    }
    
    @IBAction func nnBackTapped(_ sender: Any) {
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
extension CheckoutViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemListTableViewCell", for: indexPath) as! ItemListTableViewCell
            // swiftlint:enable force_cast
            return cell
        } else if indexPath.section == 1 {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "PromoCodeTableViewCell", for: indexPath) as! PromoCodeTableViewCell
            // swiftlint:enable force_cast
            return cell
        } else {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "CheckoutTotalTableViewCell", for: indexPath) as! CheckoutTotalTableViewCell
            // swiftlint:enable force_cast
            return cell
        }
        
    }
    
}
