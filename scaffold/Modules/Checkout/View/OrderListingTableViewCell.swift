//
//  OrderListingTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class OrderListingTableViewCell: UITableViewCell {

    @IBOutlet weak var lblOrderStatus: UILabel!
    @IBOutlet weak var btnRecurring: UIButton!
    @IBOutlet weak var lblAddonName: UILabel!
    @IBOutlet weak var lblTotalPrice: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var lblAddOnPrice: UILabel!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductImage: UIImageView!
    @IBOutlet weak var lblOrderID: UILabel!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblWhenOrdered: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uvBackground.layer.cornerRadius = 10
        uvBackground.clipsToBounds = true
        
        lblOrderStatus.layer.cornerRadius = 10
        lblOrderStatus.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        lblOrderStatus.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
