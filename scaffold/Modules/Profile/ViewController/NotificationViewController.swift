//
//  NotificationViewController.swift
//  scaffold
//
//  Created by sl-mini on 30/07/21.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var tblNotification: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblNotification.tableFooterView = UIView()
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

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationListTableViewCell", for: indexPath) as! NotificationListTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
    
    
}
