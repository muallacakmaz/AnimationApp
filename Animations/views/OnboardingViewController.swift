//
//  OnboardingViewController.swift
//  Animations
//
//  Created by Mualla on 24.04.2023.
//

import ShimmerSwift
import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextBtn.setTitle("Başla", for: .normal)
            } else {
                nextBtn.setTitle("Devam", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Kilo hedefine ulaş", description: "Sana özel, sürdürülebilir bir yaşam tarzı ile kilo ver ve yeni kilonu koru.", image: UIImage.gifImageWithName("food")!),
            OnboardingSlide(title: "Sağlıklı alışkanlıklar edin", description: "Bu yolculukta kilo vermekten çok daha fazlası var. Kilo verme ve zindelik hedeflerine ulaşmak için bizimle sağlıklı beslenme alışkanlıkları oluştur.", image: UIImage.gifImageWithName("sport")!),
            OnboardingSlide(title: "Vücudunu tanı", description: "Bilimsel araştırmalara dayanan içeriklerle aralıklı oruç hakkında daha fazla bilgiye eriş ve daha sağlıklı bir yaşam için ipuçları al.", image: UIImage.gifImageWithName("login")!),
        ]
        
        onboardingCollectionView.delegate = self
        onboardingCollectionView.dataSource = self
        
        let shimmerBtn = ShimmeringView(frame: CGRect(x: 50, y: 725, width: view.frame.size.width-100, height: 50))
        
        view.addSubview(shimmerBtn)
        shimmerBtn.contentView = nextBtn
        shimmerBtn.isShimmering = true
    }

    @IBAction func nextBtnClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1{
            let controller = storyboard?.instantiateViewController(identifier: "HomeNC") as! UINavigationController
            present(controller, animated: true, completion: nil)

            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve
         //   present(controller, animated: true, completion: nil)
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            onboardingCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)}
        sender.pulsate()
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = onboardingCollectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slide: slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: onboardingCollectionView.frame.width, height: onboardingCollectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x/width)
    }
}
