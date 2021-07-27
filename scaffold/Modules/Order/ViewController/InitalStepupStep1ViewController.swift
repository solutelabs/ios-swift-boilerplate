//
//  InitalStepupStep1ViewController.swift
//  scaffold
//
//  Created by sl-mini on 27/07/21.
//

import UIKit

class InitalStepupStep1ViewController: UIViewController {

    
    @IBOutlet weak var tblStudent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nid = UINib(nibName: "StudentListTableViewCell", bundle: nil)
        tblStudent.register(nid, forCellReuseIdentifier: "StudentListTableViewCell")
        tblStudent.rowHeight = 100
       
    }
    
    @IBAction func onBtnBackTapped(_ sender: Any) {
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
extension InitalStepupStep1ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentListTableViewCell", for: indexPath) as! StudentListTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
    
    
}
