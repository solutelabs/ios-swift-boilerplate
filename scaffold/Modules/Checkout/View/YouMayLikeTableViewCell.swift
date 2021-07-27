//
//  YouMayLikeTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

class YouMayLikeTableViewCell: UITableViewCell {

    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var btnChecked: UIButton!
    @IBOutlet weak var uvCheckedBackground: UIView!
    @IBOutlet weak var lblIngredients: UILabel!
    @IBOutlet weak var lblCal: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var isChecked: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uvBackground.layer.cornerRadius = 10
        uvCheckedBackground.layer.cornerRadius = 4
        uvCheckedBackground.layer.borderWidth = 1
        uvCheckedBackground.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        //isChecked = false
    }

    @IBAction func onBtnStarTapped(_ sender: Any) {
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
