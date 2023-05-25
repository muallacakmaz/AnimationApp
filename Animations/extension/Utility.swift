//
//  Utility.swift
//  Animations
//
//  Created by Mualla on 4.05.2023.
//

import UIKit

class Utility: NSObject {
    
    func simpleAlert(vc: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        alert.addAction(okAction)
        vc.present(alert, animated: true, completion: nil)
    }
    
}
