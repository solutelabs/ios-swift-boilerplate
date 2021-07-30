//
//  ProfileViewController.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblWalletAmount: UILabel!
    @IBOutlet weak var btnFund: UIButton!
    @IBOutlet weak var tblProfileListing: UITableView!
    @IBOutlet weak var uvFund: UIView!
    @IBOutlet weak var uvInvite: UIView!
    
    let imageCollection: [UIImage] = [#imageLiteral(resourceName: "DefaultPic"), #imageLiteral(resourceName: "MyAccount"), #imageLiteral(resourceName: "wallet"), #imageLiteral(resourceName: "help"), #imageLiteral(resourceName: "Setting")]
    let titleColletion: [String] = ["My Family", "My Account", "Wallet", "Help", "Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uvFund.layer.cornerRadius = 10
        uvFund.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    @IBAction func onbtnNotificationTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnFundTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnInvite(_ sender: Any) {
    }
    
    @IBAction func onbtnLogout(_ sender: Any) {
        let alert = UIAlertController(title: "Log out?", message: "You can always access your content by login back in",
                                      preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                   // Cancel Action
               }))
               alert.addAction(UIAlertAction(title: "Log out",
                                             style: UIAlertAction.Style.destructive,
                                             handler: {(_: UIAlertAction!) in
                                               // Log out action
               }))
               self.present(alert, animated: true, completion: nil)
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
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        // swiftlint:enable force_cast
        let index = indexPath.row
        cell.imgHeading.image = imageCollection[index]
        cell.lblHeading.text = titleColletion[index]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
