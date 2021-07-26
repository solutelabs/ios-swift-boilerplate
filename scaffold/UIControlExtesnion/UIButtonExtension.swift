//
//  RoundedConersButton.swift
//  scaffold
//
//  Created by sl-mini on 14/07/21.
//

import UIKit

class UIButtonExtension: UIButton {

}

extension UIButton {
    func setOvalButtonWithShadow(radius: CGFloat = 30) {
        // self.clipsToBounds = true
        
        self.layer.shadowColor = UIColor(red: 0.238, green: 0.592, blue: 0.251, alpha: 0.49).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 20
        self.layer.masksToBounds = false
        self.layer.cornerRadius = radius
    }
    
    func roundOneSidedCorners(corners: UIRectCorner, radius: CGFloat) {
        let borderLayer = CAShapeLayer()
        borderLayer.frame = self.layer.bounds
        borderLayer.fillColor = UIColor(named: "Primary")?.cgColor
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii:
                                    CGSize(width: radius, height: radius))
        borderLayer.path = path.cgPath
        let layer0 = CALayer()
        let shadowPath0 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 100)
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.275, green: 0.612, blue: 0.286, alpha: 0.34).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = radius
        layer0.shadowOffset = CGSize(width: 0, height: 6)
        layer0.bounds = self.bounds
        layer0.position = self.center
        self.layer.addSublayer(layer0)
        self.layer.addSublayer(borderLayer)
      }
}
