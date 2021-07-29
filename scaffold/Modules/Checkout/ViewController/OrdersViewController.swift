//
//  OrdersViewController.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class OrdersViewController: UIViewController {

    @IBOutlet weak var imgProfielPhoto: UIImageView!
    @IBOutlet weak var btnOrderDetails: UIButton!
    @IBOutlet weak var tblOrderListing: UITableView!
    @IBOutlet weak var btnCompleted: UIButton!
    @IBOutlet weak var btnDeclined: UIButton!
    @IBOutlet weak var btnPending: UIButton!
    @IBOutlet weak var btnAll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleButton()
        
    }
    
    func styleButton() {
        
        setOval(buttonId: btnAll)
        setOval(buttonId: btnPending)
        setOval(buttonId: btnDeclined)
        setOval(buttonId: btnCompleted)
    }
    
    func setOval(buttonId: UIButton, radius: CGFloat = 15) {
        buttonId.layer.cornerRadius = radius
        buttonId.clipsToBounds = true
    }
    
    @IBAction func onbtnSearchTapped(_ sender: Any) {
        
    }
    
    @IBAction func onbtnOrderDetailTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnAllTapped(_ sender: Any) {
        btnAll.backgroundColor = UIColor.lightGray
        btnCompleted.backgroundColor = UIColor.white
        btnPending.backgroundColor = UIColor.white
        btnDeclined.backgroundColor = UIColor.white
    }
    
    @IBAction func onbtnCartTapped(_ sender: Any) {
    }
    
    @IBAction func onbtnPendingTapped(_ sender: Any) {
        btnAll.backgroundColor = UIColor.white
        btnCompleted.backgroundColor = UIColor.white
        btnPending.backgroundColor = UIColor.lightGray
        btnDeclined.backgroundColor = UIColor.white
    }
    
    @IBAction func onbtnDeclinedTapped(_ sender: Any) {
        btnAll.backgroundColor = UIColor.white
        btnCompleted.backgroundColor = UIColor.white
        btnPending.backgroundColor = UIColor.white
        btnDeclined.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func onbtnCompletedTapped(_ sender: Any) {
        btnAll.backgroundColor = UIColor.white
        btnCompleted.backgroundColor = UIColor.lightGray
        btnPending.backgroundColor = UIColor.white
        btnDeclined.backgroundColor = UIColor.white
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
extension OrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderListingTableViewCell", for: indexPath) as! OrderListingTableViewCell
        // swiftlint:enable force_cast
        return cell
    }
    
}
