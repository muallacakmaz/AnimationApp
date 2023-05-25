//
//  UIView+Extension.swift
//  Animations
//
//  Created by Mualla on 24.04.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
