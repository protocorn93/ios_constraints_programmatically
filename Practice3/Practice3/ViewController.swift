//
//  ViewController.swift
//  Practice3
//
//  Created by 이동건 on 2017. 11. 7..
//  Copyright © 2017년 이동건. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // to avoid polluting viewDidLoad()
    let bigbenImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bigben.jpg"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView:UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.text = "빅 벤(Big Ben)은 영국 런던의 웨스트민스터 궁전 북쪽 끝에 있는 시계탑에 딸린 큰 종(鐘)에 대한 별칭이다."
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(bigbenImageView)
        self.view.addSubview(descriptionTextView)
        self.setupLayout()
    }
    
    private func setupLayout(){
        bigbenImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height / 8)
            .isActive = true
        bigbenImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            .isActive = true
        bigbenImageView.widthAnchor.constraint(equalToConstant: 200)
            .isActive = true
        bigbenImageView.heightAnchor.constraint(equalToConstant: 200)
            .isActive = true
        
        print(bigbenImageView.frame.height)
        descriptionTextView.topAnchor.constraint(equalTo: bigbenImageView.bottomAnchor, constant: 100).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    }
}

