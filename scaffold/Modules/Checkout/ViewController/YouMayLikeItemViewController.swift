//
//  YouMayLikeItemViewController.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

class YouMayLikeItemViewController: UIViewController {

    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var btnNext: UIButton!
    
    var arrIndexPaths: NSMutableArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        let nid = UINib(nibName: "YouMayLikeTableViewCell", bundle: nil)
        tblList.register(nid, forCellReuseIdentifier: "YouMayLikeTableViewCell")
        tblList.rowHeight = 106
        style()
    }
    func style() {
        btnNext.setOvalButtonWithShadow()
    }
    
    @IBAction func onBackTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
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
extension YouMayLikeItemViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "YouMayLikeTableViewCell", for: indexPath)
            as! YouMayLikeTableViewCell
        // swiftlint:enable force_cast
        cell.btnChecked.tag = indexPath.row
        cell.btnChecked.addTarget(self, action: #selector(self.btnCheckedTapped), for: .touchUpInside)
        if arrIndexPaths.contains(indexPath) {
            cell.btnChecked.setImage(UIImage(named: "selected"), for: .normal)
            cell.btnChecked.tintColor = UIColor(named: "Primary")
            
        } else {
            cell.btnChecked.setImage(UIImage(), for: .normal)
        }
        return cell
    }
    
    @objc func btnCheckedTapped(_ sender: UIButton) {
        let selectedIndexPath = NSIndexPath.init(row: sender.tag, section: 0)
        if arrIndexPaths.contains(selectedIndexPath) {
            arrIndexPaths.remove(selectedIndexPath)
        } else {
            arrIndexPaths.add(selectedIndexPath)
        }
        tblList.reloadRows(at: [selectedIndexPath as  IndexPath], with: .none)
    }
}
