//
//  ForgotPasswordViewController.swift
//  Animations
//
//  Created by Mualla on 26.04.2023.
//

import ShimmerSwift
import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var forgotPasswordBtn: UIButton!
    @IBOutlet weak var forgotPasswordImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forgotPasswordImageView.image = UIImage.gifImageWithName("şifre")
        
        let shimmerBtn = ShimmeringView(frame: CGRect(x: 35, y: 560, width: view.frame.size.width-70, height: 50))
        
        view.addSubview(shimmerBtn)
        shimmerBtn.contentView = forgotPasswordBtn
        shimmerBtn.isShimmering = true
    }

}
