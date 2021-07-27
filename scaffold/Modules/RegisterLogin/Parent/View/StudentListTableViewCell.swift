//
//  StudentListTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 27/07/21.
//

import UIKit

class StudentListTableViewCell: UITableViewCell {

    @IBOutlet weak var uvBackground: UIView!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSchool: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uvBackground.clipsToBounds = true
        uvBackground.layer.cornerRadius = 10
        
        imgProfile.layer.cornerRadius = imgProfile.frame.size.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
