//
//  HelpViewController.swift
//  scaffold
//
//  Created by sl-mini on 30/07/21.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var tblHelpListing: UITableView!
    let imageCollection: [UIImage] = [#imageLiteral(resourceName: "Past Order"), #imageLiteral(resourceName: "FAQ"), #imageLiteral(resourceName: "help")]
    let titleColletion: [String] = ["Help with an order", "F.A.Q", "Ask support" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblHelpListing.tableFooterView = UIView()
    }
    
    @IBAction func onbtnBackTapped(_ sender: Any) {
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

extension HelpViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath)
            as! ProfileTableViewCell
        // swiftlint:enable force_cast
        let index = indexPath.row
        cell.imgHeading.image = imageCollection[index]
        cell.lblHeading.text = titleColletion[index]
        return cell
    }
}
