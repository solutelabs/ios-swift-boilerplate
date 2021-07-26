//
//  UIViewExtension.swift
//  scaffold
//
//  Created by sl-mini on 20/07/21.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii:
                                    CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = radius
        layer.shadowOffset = CGSize(width: 0, height: 9)
        
    }
}
/*var shadows = UIView()
 shadows.frame = view.frame
 shadows.clipsToBounds = false
 view.addSubview(shadows)


 let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
 let layer0 = CALayer()
 layer0.shadowPath = shadowPath0.cgPath
 layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06).cgColor
 layer0.shadowOpacity = 1
 layer0.shadowRadius = 13
 layer0.shadowOffset = CGSize(width: 0, height: 9)
 layer0.bounds = shadows.bounds
 layer0.position = shadows.center
 shadows.layer.addSublayer(layer0)


 var shapes = UIView()

 shapes.frame = view.frame

 shapes.clipsToBounds = true

 view.addSubview(shapes)


 let layer1 = CALayer()

 layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

 layer1.bounds = shapes.bounds

 layer1.position = shapes.center

 shapes.layer.addSublayer(layer1)*/
