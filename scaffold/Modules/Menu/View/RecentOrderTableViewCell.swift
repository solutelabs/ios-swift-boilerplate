//
//  RecentOrderTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class RecentOrderTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cvRecenrOrder: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cvRecenrOrder.dataSource = self
        cvRecenrOrder.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension RecentOrderTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentOrderList", for: indexPath) as! RecentOrderListCVCell
        // swiftlint:enable force_cast
        cell.imgItem.layer.cornerRadius = 20
        cell.btnOrderedWhen.roundCorners(corners: [.topLeft,.bottomLeft], radius: 20)
        return cell
    }
}
