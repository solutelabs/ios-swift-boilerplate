//
//  CategoryListTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class CategoryListTableViewCell: UITableViewCell {

    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var btnStar: UIButton!
    @IBOutlet weak var lblIngredients: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uvBackground.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
