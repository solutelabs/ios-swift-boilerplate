//
//  ItemDetailViewController.swift
//  scaffold
//
//  Created by sl-mini on 22/07/21.
//

import UIKit
import ZKCarousel

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var btnAddToCart: UIButton!
    @IBOutlet weak var btnIncrease: UIButton!
    @IBOutlet weak var btnDecrease: UIButton!
    @IBOutlet weak var lblQunatity: UILabel!
    @IBOutlet weak var txtNote: UITextField!
    @IBOutlet weak var carousel: ZKCarousel!
    @IBOutlet weak var uvDetails: UIView!
    @IBOutlet weak var tblMakeChanges: UITableView!
    @IBOutlet weak var btnIngredients: UIButton!
    @IBOutlet weak var uvIngredients: UIView!
    @IBOutlet weak var btnMakeChanges: UIButton!
    @IBOutlet weak var uvMakeChanges: UIView!
    @IBOutlet weak var lblItemDesc: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var uvCalories: UIView!
    @IBOutlet weak var lblIngredients: UILabel!
    @IBOutlet weak var uvbtnIngredients: UIView!
    @IBOutlet weak var lblHealthRating: UILabel!
    @IBOutlet weak var uvHealthRating: UIView!
    @IBOutlet weak var lblItemName: UILabel!
    @IBOutlet weak var btnFavourite: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        setupCarousel()
    }
    
    func style() {
        btnAddToCart.setOvalButtonWithShadow()
        
        setCircleButton(btnId: btnIncrease)
        setCircleButton(btnId: btnDecrease)
        
        txtNote.setLeftPadding()
        txtNote.layer.cornerRadius = 16
        txtNote.layer.borderWidth = 1
        txtNote.layer.borderColor = UIColor(red: 0.879, green: 0.879, blue: 0.879, alpha: 1).cgColor
        
        setBorderToView(viewId: uvCalories)
        setBorderToView(viewId: uvbtnIngredients)
        setBorderToView(viewId: uvHealthRating)
        
        uvDetails.roundCorners(corners: [.topLeft, .topRight], radius: 40)
    }
    
    @IBAction func onIncreaseTapped(_ sender: Any) {
        
    }
    
    @IBAction func onDecreaseTapped( _ sender: Any) {
        
    }
    
    func setBorderToView(viewId: UIView) {
        viewId.layer.borderWidth = 1
        viewId.layer.cornerRadius = 10
        viewId.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
    }
    
    func setCircleButton(btnId: UIButton) {
        btnId.layer.cornerRadius = btnDecrease.frame.size.height / 2
        btnId.layer.borderWidth = 1
        btnId.layer.borderColor =  #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
    }
    
    func setupCarousel() {
        // Create as many slides as you'd like to show in the carousel
        let slide = ZKCarouselSlide(image: #imageLiteral(resourceName: "Step0"), title: "", description: "")
        let slide1 = ZKCarouselSlide(image: #imageLiteral(resourceName: "Step1"), title: "", description: "")
        
        // Add the slides to the carousel
        self.carousel.slides = [slide, slide1, slide, slide1]
        
        // You can optionally use the 'interval' property to set the timing for automatic slide changes. The default is 1 second.
        self.carousel.interval = 5
        
        // OPTIONAL - use this function to automatically start traversing slides.
        self.carousel.start()
        
        // OPTIONAL - use this function to stop automatically traversing slides.
        // self.carousel.stop()
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
