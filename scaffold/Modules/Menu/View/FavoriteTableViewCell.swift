//
//  FavoriteTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 28/07/21.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var lblCategoryName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var btnRecurring: UIButton!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var lblProductName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uvBackground.layer.cornerRadius = 10
        uvBackground.clipsToBounds = true
        lblPrice.layer.cornerRadius = 10
        lblPrice.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
