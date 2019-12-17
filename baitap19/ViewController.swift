//
//  ViewController.swift
//  baitap19
//
//  Created by Dương chãng on 12/17/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let scrollview: UIScrollView = {
        let scrollview = UIScrollView()
        // để contraint scrollview
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.backgroundColor = #colorLiteral(red: 1, green: 0.1958419681, blue: 0.9639049172, alpha: 1)
        // set kich thước cho scrollview
        scrollview.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
        // set trang cho scrollview
        scrollview.contentSize = CGSize(width: UIScreen.main.bounds.width * 4 , height: UIScreen.main.bounds.height / 2)
        // chia trang cho scroll view
        scrollview.isPagingEnabled = true
        // set cho ko hiển thì thanh cuộn dọc
        scrollview.showsVerticalScrollIndicator = false
        return scrollview
    }()
    let botronView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: UIScreen.main.bounds.height / 2, width: UIScreen.main.bounds.width, height: 50)
        
        let hypo: CGFloat = CGFloat(sqrtf(powf(Float(UIScreen.main.bounds.height / 2), 2) + powf(Float(UIScreen.main.bounds.width / 2), 2)))
        let path = UIBezierPath(
            arcCenter: CGPoint(x: UIScreen.main.bounds.width / 2, y: -UIScreen.main.bounds.height / 2),
            radius: hypo,
            startAngle: 0, endAngle: CGFloat(Float.pi * 2), clockwise: true)
        let subLayer = CAShapeLayer()
        subLayer.path = path.cgPath
        subLayer.fillColor = UIColor.systemIndigo.cgColor
        view.layer.addSublayer(subLayer)
        view.layer.masksToBounds = true
        return view
    }()
    
    let view1 : UIView = {
        let view1 = UIView()
        // set view1 vs kích thước bằng scrollview
        // add cho view1 là con của scrollview
        view1.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
        // tạo một cái image
        let image = UIImageView(image: UIImage(named: "4"))
        // add cho image là con của view1
        image.contentMode = .center
        view1.addSubview(image)
        // set anh về trung tâm của view
        image.center = view1.center
        return view1
    }()
    let view2: UIView = {
        let view2 = UIView()
        view2.frame = CGRect(x: UIScreen.main.bounds.width, y: 0, width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2)
        let image2 = UIImageView(image: UIImage(named: "2"))
        image2.frame = CGRect(x: UIScreen.main.bounds.width / 4, y: UIScreen.main.bounds.height / 4 - 100 , width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
        view2.addSubview(image2)
        
        return view2
    }()
    let view3: UIView = {
        let view3 = UIView()
        view3.frame = CGRect(x: UIScreen.main.bounds.width * 2, y: 0, width: UIScreen.main.bounds.width / 4 - 100, height: UIScreen.main.bounds.height / 2)
        let image3 = UIImageView(image: UIImage(named: "1"))
        image3.frame = CGRect(x: UIScreen.main.bounds.width / 4, y: UIScreen.main.bounds.height / 4 - 100 , width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
        view3.addSubview(image3)
        
        return view3
    }()
    let view4 : UIView = {
        let view4 = UIView()
        // scrollview tăng dần lên 0 1 2 3
        view4.frame = CGRect(x: UIScreen.main.bounds.width * 3, y: 0, width: UIScreen.main.bounds.width / 4 - 100, height: UIScreen.main.bounds.height / 2)
        let image4 = UIImageView(image: UIImage(named: "3"))
        image4.frame = CGRect(x: UIScreen.main.bounds.width/4, y: UIScreen.main.bounds.height / 4 - 100 , width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
        view4.addSubview(image4)
        return view4
        
    }()
    let pageControl: UIPageControl = {
        let page = UIPageControl()
        page.translatesAutoresizingMaskIntoConstraints = false
        page.center.x = UIScreen.main.bounds.maxX / 2
        page.currentPageIndicatorTintColor = .systemIndigo
        page.pageIndicatorTintColor = #colorLiteral(red: 1, green: 0.2902536181, blue: 0.4524252721, alpha: 1)
        page.numberOfPages = 4
        page.currentPage = 0
        return page
    }()
    
    let lb: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "🚗 By tapping Log In, you agree with our Terms of Service and Privacy Policy"
        // tạo cho label 2 trang
        lb.numberOfLines = 2
        lb.textAlignment = .center
        lb.font = UIFont(name: "🚗 By tapping Log In, you agree with our Terms of Service and Privacy Policy", size: 12)
        return lb
    }()
    
    
    let buton : UIButton = {
        let buton = UIButton()
        buton.translatesAutoresizingMaskIntoConstraints = false
        buton.setTitle("LOIN WIDTH FACEBOOK", for: .normal)
        buton.backgroundColor = #colorLiteral(red: 0.5367222613, green: 0.3846968494, blue: 1, alpha: 1)
        buton.layer.cornerRadius = 10
        buton.layer.borderWidth = 3
        buton.layer.borderColor = #colorLiteral(red: 1, green: 0.6916587316, blue: 0.8642051671, alpha: 1)
        buton.layer.shadowColor = #colorLiteral(red: 0.1298578146, green: 0.1742400419, blue: 1, alpha: 1)
        buton.layer.shadowOpacity = 10
        buton.layer.shadowRadius = 20
        return buton
    }()
    let lb2: UILabel = {
        let lb2 = UILabel()
        lb2.translatesAutoresizingMaskIntoConstraints = false
        lb2.text = "We don't post anything to Facebook"
        lb2.numberOfLines = 1
        lb2.textAlignment = .center
        lb2.font = UIFont(name: " 📜We don't post anything to Facebook", size: 12)
        return lb2
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(scrollview)
        scrollview.addSubview(view1)
        scrollview.addSubview(view2)
        scrollview.addSubview(view3)
        scrollview.addSubview(view4)
        view.addSubview(botronView)
        view.addSubview(pageControl)
        view.addSubview(lb)
        view.addSubview(buton)
        view.addSubview(lb2)
        scrollview.delegate = self
        setupall()
        buton.addTarget(self, action: #selector(didenman2), for: .touchUpInside)
    }
    func setupall(){
        scrollview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        scrollview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        scrollview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 2 + 50).isActive = true
        
        botronView.topAnchor.constraint(equalTo: scrollview.bottomAnchor, constant: 0).isActive = true
        botronView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        botronView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        botronView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        pageControl.topAnchor.constraint(equalTo: botronView.topAnchor, constant: 64).isActive = true
        pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        lb.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 32).isActive = true
        lb.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        lb.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        lb.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        buton.topAnchor.constraint(equalTo: lb.bottomAnchor, constant: 32).isActive = true
        buton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        buton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        buton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        lb2.topAnchor.constraint(equalTo: buton.bottomAnchor, constant: 32).isActive = true
        lb2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        lb2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        lb2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
// xem trên mạng
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        var pagenumber = round(scrollview.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pagenumber)
    }
    @objc func didenman2() {
           let diden = man2ViewController()
           let navigation = UINavigationController(rootViewController: diden)
        // chuyển toàn màn hình
        navigation.modalPresentationStyle = .fullScreen
           present(navigation, animated: true, completion: nil)
}

}
