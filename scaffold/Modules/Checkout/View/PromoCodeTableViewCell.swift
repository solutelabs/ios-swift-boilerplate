//
//  PromoCodeTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

class PromoCodeTableViewCell: UITableViewCell {

    @IBOutlet weak var uvMain: UIView!
    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var lblPromoCodeDesc: UILabel!
    @IBOutlet weak var txtPromoCode: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uvBackground.clipsToBounds = false
        let layer0 = CALayer()
        layer0.shadowPath = UIBezierPath(roundedRect: uvBackground.bounds, cornerRadius: 12).cgPath
        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.16).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 0, height: 4)
        uvMain.layer.insertSublayer(layer0, at: 0)
        uvBackground.layer.cornerRadius = 12
        uvBackground.layer.borderWidth = 1
        uvBackground.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.9282377897)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


