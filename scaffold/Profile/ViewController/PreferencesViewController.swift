//
//  PreferencesViewController.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

class PreferencesViewController: UIViewController {

    @IBOutlet weak var tblAllergies: UITableView!
    @IBOutlet weak var tblDiet: UITableView!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        let nid = UINib(nibName: "PreferenceTableViewCell", bundle: nil)
        tblAllergies.register(nid, forCellReuseIdentifier: "PreferenceTableViewCell")
        tblAllergies.rowHeight = 70
        
        tblDiet.register(nid, forCellReuseIdentifier: "PreferenceTableViewCell")
        tblDiet.rowHeight = 70
        
    }
    
    func style() {
        self.view.roundCorners(corners: [.topLeft, .topRight], radius: 30)
    }

    @IBAction func btnOnCloseTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnNext(_ sender: Any) {
    
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
extension PreferencesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferenceTableViewCell", for: indexPath) as! PreferenceTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
}
