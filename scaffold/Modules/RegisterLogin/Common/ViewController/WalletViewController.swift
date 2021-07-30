//
//  WalletViewController.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class WalletViewController: UIViewController {

    @IBOutlet weak var lblWallentBalance: UILabel!
    @IBOutlet weak var btnAddFunds: UIButton!
    @IBOutlet weak var tblCardsList: UITableView!
    @IBOutlet weak var tblVouchers: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func onbtnBackTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onbtnAddFundsTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnAddPayment(_ sender: Any) {
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

extension WalletViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblCardsList {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardsTableViewCell", for: indexPath) as! CardsTableViewCell
            // swiftlint:enable force_cast
            return cell
        } else {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "VoucherTableViewCell", for: indexPath) as! VoucherTableViewCell
            // swiftlint:enable force_cast
            return cell
        }
       
    }
}
