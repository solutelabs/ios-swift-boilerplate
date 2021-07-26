//
//  CategoryTableViewCell.swift
//  scaffold
//
//  Created by sl-mini on 25/07/21.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var cvCategoryListing: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cvCategoryListing.dataSource = self
        cvCategoryListing.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categorylist", for: indexPath) as! CategoryListCollectionViewCell
        // swiftlint:enable force_cast
        return cell
    }
    
    
}
