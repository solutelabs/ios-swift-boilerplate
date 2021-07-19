//
//  PopupViewController.swift
//  scaffold
//
//  Created by sl-mini on 15/07/21.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblMainHeading: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var popupview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    func style() {
        imgLogo.transform = CGAffineTransform(a: 1.86, b: 0, c: 0, d: 1, tx: 0, ty: 0)
        imgLogo.layer.position =  CGPoint(x: imgLogo.layer.bounds.midX, y: imgLogo.layer.bounds.midY)
        
        let shadows = UIView()
        shadows.frame = popupview.frame
        shadows.clipsToBounds = false
        popupview.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 12)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.16).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 4, height: 8)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        popupview.layer.addSublayer(layer0)

        let shapes = UIView()
        shapes.frame = popupview.frame
        shapes.clipsToBounds = true
        popupview.addSubview(shapes)
        
        let layer1 = CALayer()
        layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer1.bounds = shapes.bounds
        layer1.position = shapes.center
        shapes.layer.addSublayer(layer1)
        shapes.layer.cornerRadius = 12
        
        popupview.layer.cornerRadius = 12
        popupview.clipsToBounds = false
        popupview.addSubview(shadows)
        popupview.addSubview(shapes)
        
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
