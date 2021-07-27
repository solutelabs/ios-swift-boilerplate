//
//  RechargeViewController.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

class RechargeViewController: UIViewController {

    @IBOutlet weak var imagLogo: UIImageView!
    @IBOutlet weak var uvBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        self.view.addGestureRecognizer(tapGesture)
        style()
        // Do any additional setup after loading the view.
    }
    
    func style() {
        let layer0 = CALayer()
        layer0.contents = imagLogo.image
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.86, b: 0, c: 0, d: 1, tx: 0, ty: 0))
        layer0.bounds = view.bounds
        layer0.position = view.center
        imagLogo.layer.addSublayer(layer0)
        
        uvBackground.layer.cornerRadius = 12
        uvBackground.clipsToBounds = true
        //uvBackground.layer.cornerRadius = 20
        //btnDelete.clipsToBounds = true
    }
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
            dismiss(animated: true, completion: nil)
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
