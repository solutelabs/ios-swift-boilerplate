//
//  VoucherTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class VoucherTableViewCell: UITableViewCell {

    @IBOutlet weak var imgVoucher: UIImageView!
    @IBOutlet weak var lblVoucherDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
