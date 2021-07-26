//
//  PastOrderViewController.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

class PastOrderViewController: UIViewController {

    
    @IBOutlet weak var tblOrderList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        let nid = UINib(nibName: "PastOrderTableViewCell", bundle: nil)
        tblOrderList.register(nid, forCellReuseIdentifier: "PastOrderTableViewCell")
        tblOrderList.rowHeight = 181
    }
    
    @IBAction func onCloseTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func style() {
        self.view.roundCorners(corners: [.topLeft, .topRight], radius: 30)
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

extension PastOrderViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "PastOrderTableViewCell", for: indexPath) as! PastOrderTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
}
