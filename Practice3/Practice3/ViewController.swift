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
        imageView.contentMode = .scaleAspectFit
        // 화면의 크기에 따라 이미지의 비율을 맞추기 위해
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView:UITextView = {
        let textView = UITextView()
        var attributedText = NSMutableAttributedString(string: "빅 벤(Big Ben)은 영국 런던의 웨스트민스터 궁전 북쪽 끝에 있는 시계탑에 딸린 큰 종(鐘)에 대한 별칭이다.", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\n시계탑의 정식 명칭은 엘리자베스 타워(Elizabeth Tower)이지만 흔히 종뿐만 아니라 시계탑 자체도 빅 벤이라고 부른다.시계탑의 4면에는 세계에서 가장 큰 자명종 시계가 달려 있고, 시계 자체도 독립되어 세워진 것들 가운데 세 번째로 높은 것이다. 2009년 5월 31일 건립 150주년을 축하하는 행사가 시계탑에서 있었다. 1858년에 세워진 빅 벤은 수많은 작품에서 런던을 상징하는 장소로 등장한 바 있으며, 매년 12,000명의 관광객이 찾는 대표적인 명소이기도 하다", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.gray]))
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(descriptionTextView)
        self.setupLayout()
    }

    
    private func setupLayout(){
        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        // 화면을 landscape모드로 바꾸었을 때 컴포넌트들의 크기와 위치를 상대적으로 정하기 위한 Container View
        
        topImageContainerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        // Constant가 아닌 multiplier를 이용하는 이유는 상대적인 크기를 구하기 위해
        topImageContainerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        topImageContainerView.addSubview(bigbenImageView)
        // 기준점이 바뀜
        bigbenImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bigbenImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bigbenImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    }
}

