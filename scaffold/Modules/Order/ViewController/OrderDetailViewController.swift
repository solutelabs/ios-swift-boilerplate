//
//  OrderDetailViewController.swift
//  scaffold
//
//  Created by sl-mini on 27/07/21.
//

import UIKit

class OrderDetailViewController: UIViewController {

    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var uvPopup: UIView!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblIngredients: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblOrderNotes: UILabel!
    @IBOutlet weak var lblOrderProductPrice: UILabel!
    @IBOutlet weak var uvRating: UIView!
    @IBOutlet weak var uvIngredients: UIView!
    @IBOutlet weak var uvCalories: UIView!
    @IBOutlet weak var btnCancelProblm: UIButton!
    @IBOutlet weak var btnRecurringOrder: UIButton!
    @IBOutlet weak var lblTotalAmount: UILabel!
    @IBOutlet weak var lblAddonPrice: UILabel!
    @IBOutlet weak var lblAddon: UILabel!
    @IBOutlet weak var lblOrderProductName: UILabel!
    @IBOutlet weak var lblQty: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }

    func style() {
        btnRecurringOrder.setOvalButtonWithShadow()
        setBorderToView(viewId: uvCalories)
        setBorderToView(viewId: uvIngredients)
        setBorderToView(viewId: uvRating)
        
        uvPopup.clipsToBounds = false
        uvPopup.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        uvPopup.backgroundColor = UIColor.white

    }
    func setBorderToView(viewId: UIView) {
        viewId.layer.borderWidth = 1
        viewId.layer.cornerRadius = 10
        viewId.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
    }
    
    @IBAction func onFavoriteTapped(_ sender: Any) {
    }
    
    @IBAction func onEditTapped(_ sender: Any) {
    }
    
    @IBAction func btnOnRecurring(_ sender: Any) {
     }
    
    /*// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
