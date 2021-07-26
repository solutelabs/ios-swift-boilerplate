//
//  PastOrderTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

class PastOrderTableViewCell: UITableViewCell {

    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var lblOrderDate: UILabel!
    @IBOutlet weak var btnRecurring: UIButton!
    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var lblOrderId: UILabel!
    @IBOutlet weak var lblOrderItemName: UILabel!
    @IBOutlet weak var lblAddOn: UILabel!
    @IBOutlet weak var lblOrderPrice: UILabel!
    @IBOutlet weak var lblAddonPrice: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       style()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func style() {
        uvBackground.layer.cornerRadius = 10
        uvBackground.clipsToBounds = true
        
        btnRecurring.layer.cornerRadius = 5
        btnRecurring.clipsToBounds = true
    }
    
}
