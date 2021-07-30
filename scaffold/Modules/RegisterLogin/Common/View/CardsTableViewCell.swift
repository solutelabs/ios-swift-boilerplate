//
//  CardsTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class CardsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgCardType: UIImageView!
    
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var lblExpire: UILabel!
    @IBOutlet weak var lblCardNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
