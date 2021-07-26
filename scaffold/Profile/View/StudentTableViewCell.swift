//
//  StudentTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 19/07/21.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSchoolName: UILabel!
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var uvBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgPhoto.layer.cornerRadius = 29.5
        imgPhoto.clipsToBounds = true
        
        // uvBackground.layer.cornerRadius = 10
//        uvBackground.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
