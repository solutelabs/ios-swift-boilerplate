//
//  ProfileTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 29/07/21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgHeading: UIImageView!
    @IBOutlet weak var lblHeading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
