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
        // imageView.image = UIImage(named: "DownArrow")
        imageView.image = #imageLiteral(resourceName: "DownArrow")
        mainView.addSubview(imageView)
        self.rightView = mainView
    }
    
    func ovalShape() {
        // self.borderStyle = .roundedRect
        self.layer.cornerRadius = 16.0
        self.clipsToBounds = true
//        self.layer.borderWidth =
    }
    
    enum Direction {
        case left
        case right
    }
    func withImage(direction: Direction, image: UIImage, colorSeparator: UIColor, colorBorder: UIColor) {
        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        mainView.layer.cornerRadius = 5

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        // view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.layer.borderWidth = CGFloat(0.5)
        view.layer.borderColor = colorBorder.cgColor
        mainView.addSubview(view)

        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 12.0, y: 10.0, width: 24.0, height: 24.0)
        view.addSubview(imageView)

        let seperatorView = UIView()
        seperatorView.backgroundColor = colorSeparator
        mainView.addSubview(seperatorView)

        if(Direction.left == direction){ // image left
            seperatorView.frame = CGRect(x: 45, y: 0, width: 5, height: 45)
            self.leftViewMode = .always
            self.leftView = mainView
        } else { // image right
            seperatorView.frame = CGRect(x: 0, y: 0, width: 5, height: 45)
            self.rightViewMode = .always
            self.rightView = mainView
        }

        self.layer.borderColor = colorBorder.cgColor
        self.layer.borderWidth = CGFloat(0.5)
        self.layer.cornerRadius = 5
    }
}
