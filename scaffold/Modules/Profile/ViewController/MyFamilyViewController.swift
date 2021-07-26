//
//  MyFamilyViewController.swift
//  scaffold
//
//  Created by sl-mini on 19/07/21.
//

import UIKit

class MyFamilyViewController: UIViewController {

    @IBOutlet weak var tblStudent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nid = UINib(nibName: "StudentTableViewCell", bundle: nil)
        tblStudent.register(nid, forCellReuseIdentifier: "StudentTableViewCell")
        tblStudent.rowHeight = 100
    }
    
    @IBAction func goBack(_ sender: Any) {
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

extension MyFamilyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
 
}
