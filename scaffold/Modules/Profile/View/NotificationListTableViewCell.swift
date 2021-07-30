//
//  NotificationListTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 30/07/21.
//

import UIKit

class NotificationListTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNotificationText: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var uvBackgroud: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uvBackgroud.layer.cornerRadius = 10
        uvBackgroud.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
