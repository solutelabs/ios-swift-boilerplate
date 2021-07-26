//
//  PreferenceTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

class PreferenceTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var uvButtonBackground: UIView!
    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var btnCheck: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        style()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func style() {
        uvBackground.layer.cornerRadius = 16
         uvBackground.clipsToBounds = true
        
        
        uvButtonBackground.layer.cornerRadius = 4
        uvButtonBackground.layer.borderWidth = 1
        uvButtonBackground.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        btnCheck.layer.cornerRadius = 4
        btnCheck.clipsToBounds = true
    }
    
}
