//
//  CircularButton.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/05.
//

import UIKit

final class CircularButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height * 0.5
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        
        if self.state == .selected {
            self.layer.backgroundColor = UIColor.blue.cgColor
        }
        else {
            self.layer.backgroundColor = UIColor.white.cgColor
        }
    }
}


extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))
        
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.setBackgroundImage(backgroundImage, for: state)
    }
}
