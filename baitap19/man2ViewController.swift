//
//  man2ViewController.swift
//  baitap19
//
//  Created by Dương chãng on 12/17/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class man2ViewController: UIViewController {
    
    let Image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "5")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " 🤪 Kung Pao Potato"
        label.textColor = .darkGray
        label.font = UIFont(name: "🤪 Kung Pao Potato", size: 14)
        return label
    }()
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.backgroundColor = #colorLiteral(red: 0.5367222613, green: 0.3846968494, blue: 1, alpha: 1)
        button.layer.borderWidth = 3
        button.layer.borderColor = #colorLiteral(red: 1, green: 0.6916587316, blue: 0.8642051671, alpha: 1)
        button.layer.shadowColor = #colorLiteral(red: 0.1298578146, green: 0.1742400419, blue: 1, alpha: 1)
        button.layer.shadowOpacity = 10
        button.layer.shadowRadius = 20
        button.backgroundColor = .systemGreen
        button.setTitle("+ ADD", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //let trove = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(trovetrang1))

        view.backgroundColor = #colorLiteral(red: 0.7563178972, green: 1, blue: 0.7985594707, alpha: 1)
        view.addSubview(nameLabel)
        view.addSubview(Image)
        view.addSubview(button)
        setup()
//    }
//    @objc func trovetrang1(){
//        self.dismiss(animated: true, completion: nil)
    }
    func setup() {
        Image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        Image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        Image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        Image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: Image.bottomAnchor, constant: 32).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        button.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 200).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}
