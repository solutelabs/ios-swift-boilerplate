//
//  UITextFieldExtension.swift
//  scaffold
//
//  Created by sl-mini on 14/07/21.
//

import UIKit

class UITextFieldExtension: UITextField {

}

extension UITextField {
    
    func setLeftPadding() {
        self.leftView = UIView(frame: CGRect(x: 0, y: 8, width: 16, height: self.frame.height))
        self.leftViewMode = .always
        
    }
    
    func setRightImage() {
        self.rightViewMode = .always
        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 20))
        imageView.contentMode = .scaleAspectFit
        //imageView.image = UIImage(named: "DownArrow")
        imageView.image = #imageLiteral(resourceName: "DownArrow")
        mainView.addSubview(imageView)
        self.rightView = mainView
    }
    
    func ovalShape() {
        //self.borderStyle = .roundedRect
        self.layer.cornerRadius = 16.0
        self.clipsToBounds = true
//        self.layer.borderWidth =
    }
}
