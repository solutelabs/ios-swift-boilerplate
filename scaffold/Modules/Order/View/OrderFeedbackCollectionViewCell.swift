//
//  OrderFeedbackCollectionViewCell.swift
//  scaffold
//
//  Created by sl-mini on 28/07/21.
//

import UIKit

class OrderFeedbackCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var btnIssue: UIButton!
    @IBOutlet weak var uvBackground: UIView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
        btnIssue.layer.cornerRadius = 10
        uvBackground.clipsToBounds = true
        uvBackground.layer.borderWidth = 0
        uvBackground.layer.borderColor = UIColor.white.cgColor
    }
    
}
