//
//  UIImageViewExtension.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit

extension UIImageView {
    
    func setTopCornerRadius( corners: UIRectCorner, radius: CGFloat) {
        // rect: CGRect,
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.layer.bounds
            maskLayer.path = path.cgPath
            self.layer.mask = maskLayer
            self.layer.masksToBounds = true
        }
    
}
