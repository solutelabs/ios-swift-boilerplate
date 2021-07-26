//
//  SearchViewController.swift
//  scaffold
//
//  Created by sl-mini on 21/07/21.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var btnSort: UIButton!
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var imgProfilePhoto: UIImageView!
    @IBOutlet weak var btnEmptyCart: UIButton!
    @IBOutlet weak var tblSearch: UITableView!
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var uvSortBy: UIView!
    @IBOutlet weak var btnSNext: UIButton!
    // Higher To Lower
    @IBOutlet weak var uvHL: UIView!
    @IBOutlet weak var btnHLG: UIButton!
    var isHLSelected: Bool = false
    // Lower To Higher
    @IBOutlet weak var uvLH: UIView!
    @IBOutlet weak var btnLHG: UIButton!
    var isLHSelected: Bool = false
    // Most Popular
    @IBOutlet weak var uvMostPopular: UIView!
    @IBOutlet weak var btnMostPopular: UIButton!
    var isMostPopular: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblSearch.tableFooterView = UIView()
        style()
    }
    
    func style() {
        btnFilter.roundOneSidedCorners(corners: [.topRight, .bottomRight], radius: 30)
        btnSort.roundOneSidedCorners(corners: [.topLeft, .bottomLeft], radius: 30)
        uvSortBy.isHidden = true
        // uvSortBy.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        // setShadow()
        btnSNext.setOvalButtonWithShadow()
        
        uvSortBy.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        uvHL.roundCorners(corners: [.bottomLeft, .bottomRight, .topLeft, .topRight], radius: 16)
        uvLH.roundCorners(corners: [.bottomLeft, .bottomRight, .topLeft, .topRight], radius: 16)
        uvMostPopular.roundCorners(corners: [.bottomLeft, .bottomRight, .topLeft, .topRight], radius: 16)
        btnHLG.layer.cornerRadius = 4
        btnHLG.layer.borderWidth = 1
        btnHLG.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        btnLHG.layer.cornerRadius = 4
        btnLHG.layer.borderWidth = 1
        btnLHG.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        btnMostPopular.layer.cornerRadius = 4
        btnMostPopular.layer.borderWidth = 1
        btnMostPopular.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
    }
    
    func setShadow() {
        
        let shadowPath0 = UIBezierPath(roundedRect: uvSortBy.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.masksToBounds = false
        
        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06).cgColor
        layer0.shadowOpacity = 0.5 // 1
        layer0.shadowRadius = 30
        layer0.shadowOffset = CGSize(width: 0, height: 9)
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shouldRasterize = true
        layer0.rasterizationScale = UIScreen.main.scale
        //layer0.bounds = uvSortBy.bounds
        //layer0.position = uvSortBy.center
        uvSortBy.layer.addSublayer(layer0)
        
        
    }
    
    @IBAction func btnOnSortTapped(_ sender: Any) {
        uvSortBy.isHidden = false
    }
    
    @IBAction func btnOnFilterTapped(_ sender: Any) {
    }
    
    @IBAction func btnClose(_ sender: Any) {
        uvSortBy.isHidden = true
    }
    
    @IBAction func btnHigherToLower(_ sender: Any) {
        
        if isHLSelected {
            btnHLG.setImage(UIImage(), for: .normal)
            isHLSelected = false
        } else {
            btnHLG.setImage(UIImage(named: "selected"), for: .normal)
            btnHLG.tintColor = UIColor(named: "Primary")
            isHLSelected = true
        }
    }
    
    @IBAction func btnLowerToHiger(_ sender: Any) {
        if isLHSelected {
            btnLHG.setImage(UIImage(), for: .normal)
            isLHSelected = false
        } else {
            btnLHG.setImage(UIImage(named: "selected"), for: .normal)
            btnLHG.tintColor = UIColor(named: "Primary")
            isLHSelected = true
        }
    }
    
    @IBAction func btnMostPopular(_ sender: Any) {
        if isMostPopular {
            btnMostPopular.setImage(UIImage(), for: .normal)
            isMostPopular = false
        } else {
            btnMostPopular.setImage(UIImage(named: "selected"), for: .normal)
            btnMostPopular.tintColor = UIColor(named: "Primary")
            isMostPopular = true
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // // swiftlint:disable force_cast
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        // // swiftlint:enable force_cast
        return cell
    }
}
