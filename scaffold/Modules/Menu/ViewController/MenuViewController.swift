//
//  MenuViewController.swift
//  scaffold
//
//  Created by sl-mini on 23/07/21.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var imgProfilePhoto: UIImageView!
    @IBOutlet weak var tblMenu: UITableView!
    @IBOutlet weak var imgMenuImage: UIImageView!
    @IBOutlet weak var btnOrderDetails: UIButton!
    @IBOutlet weak var btnDiscover: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        let nid = UINib(nibName: "CategoryListTableViewCell", bundle: nil)
        tblMenu.register(nid, forCellReuseIdentifier: "CategoryListTableViewCell")
    }

    @IBAction func onOrderDetailsTapped(_ sender: Any) {
    }
    @IBAction func onbtnDiscoverTapped(_ sender: Any) {
    }
    
    func style() {
        btnDiscover.setOvalButtonWithShadow(radius: 12)
        imgProfilePhoto.layer.cornerRadius = imgProfilePhoto.frame.size.height / 2
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

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 4 {
            return 2
        }
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell")!
            
            return cell
        } else if indexPath.section == 1 {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "headingcell") as! HeadingTableViewCell
            // swiftlint:enable force_cast
            cell.lbltitle.text = "Recently ordered"
            return cell
        } else if indexPath.section == 2 {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecentOrderTableViewCell", for: indexPath)
                as! RecentOrderTableViewCell
            // swiftlint:enable force_cast
            return cell
        } else if indexPath.section == 3 {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "headingcell") as! HeadingTableViewCell
            // swiftlint:enable force_cast
            cell.lbltitle.text = "You may like"
            return cell
        } else {
            // swiftlint:disable force_cast
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryListTableViewCell")
                as! CategoryListTableViewCell
            print("CategoryListTableViewCell")
            // swiftlint:enable force_cast
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 150
        } else if indexPath.section == 1 {
            return 44
        } else if indexPath.section == 2 {
            return 170
        } else if indexPath.section == 3 {
            return 44
        } else {
            return 106
        }
        
    }
}
