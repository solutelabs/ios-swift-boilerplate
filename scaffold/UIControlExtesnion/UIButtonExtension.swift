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
    func setOvalButtonWithShadow() {
        self.layer.cornerRadius = 30
        self.clipsToBounds = true
        self.layer.masksToBounds = false
        self.layer.shadowColor = #colorLiteral(red: 0.2392156863, green: 0.5921568627, blue: 0.2509803922, alpha: 0.49)
        // self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 30
        self.layer.shadowOffset = CGSize(width: 4, height: 20)

//        let shadows = UIView()
//        shadows.frame = self.frame
//        shadows.clipsToBounds = false
//        self.addSubview(shadows)
//
//        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 100)
//        let layer0 = CALayer()
//        layer0.shadowPath = shadowPath0.cgPath
//        layer0.shadowColor = UIColor(red: 0.238, green: 0.592, blue: 0.251, alpha: 0.49).cgColor
//        layer0.shadowOpacity = 1
//        layer0.shadowRadius = 20
//        layer0.shadowOffset = CGSize(width: 0, height: 4)
//        layer0.bounds = shadows.bounds
//        layer0.position = shadows.center
//        shadows.layer.addSublayer(layer0)
//
//        let shapes = UIView()
//        shapes.frame = self.frame
//        shapes.clipsToBounds = true
//        self.addSubview(shapes)
//
//        let layer1 = CALayer()
//        switch buttonBgColor {
//        case Constant.buttonWhiteBgColor:
//            layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
//           // break
//        case  Constant.buttonOrangeBgColor:
//            layer1.backgroundColor = UIColor(red: 0.979, green: 0.64, blue: 0.154, alpha: 1).cgColor
//            // break
//        default:
//            // Green
//            layer1.backgroundColor = UIColor(red: 0.275, green: 0.612, blue: 0.286, alpha: 1).cgColor
//        }
//
//        layer1.bounds = shapes.bounds
//        layer1.position = shapes.center
//        shapes.layer.addSublayer(layer1)
//        shapes.layer.cornerRadius = 100
//
//        //self.layer.cornerRadius = 20
//        self.clipsToBounds = true
//        self.addSubview(shadows)
//        // self.addSubview(shapes)
    }
}
