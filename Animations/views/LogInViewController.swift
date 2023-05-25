//
//  LogInViewController.swift
//  Animations
//
//  Created by Mualla on 24.04.2023.
//

import ShimmerSwift
import UIKit

class LogInViewController: UIViewController {


    @IBOutlet weak var logInBtn: UIButton!
    @IBOutlet weak var logInImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        logInImageView.image = UIImage.gifImageWithName("signin")
        
        let shimmerBtn = ShimmeringView(frame: CGRect(x: 110, y: 540, width: view.frame.size.width-220, height: 44))
        
        view.addSubview(shimmerBtn)
        shimmerBtn.contentView = logInBtn
        shimmerBtn.shimmerSpeed = 180
        shimmerBtn.isShimmering = true
    }
    
}
