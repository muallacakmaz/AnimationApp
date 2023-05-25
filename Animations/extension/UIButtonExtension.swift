//
//  UIButtonExtension.swift
//  Animations
//
//  Created by Mualla on 24.04.2023.
//

import UIKit

extension UIButton {
    
    func pulsate(){
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
}
