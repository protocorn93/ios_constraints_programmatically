//
//  ViewController.swift
//  Practice1
//
//  Created by 이동건 on 2017. 11. 6..
//  Copyright © 2017년 이동건. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myButton = UIButton()
    let myLabel = UILabel()
    
    var buttonCons:[NSLayoutConstraint] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        self.settingButton()
        self.settingLabel()
    }
    func settingLabel(){
        myLabel.text = "This is My Label"
        myLabel.backgroundColor = .white
        
        self.view.addSubview(myLabel)
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: myButton.bottomAnchor, constant: 30).isActive = true
        myLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        myLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
    }
    func settingButton(){
        myButton.setTitle("This is Button", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.backgroundColor = .darkGray
        
        self.view.addSubview(myButton)
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        myButton.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
    }
    
    @objc func btnClicked(){
        let alert = UIAlertController(title: "Click!", message: "You clicked that button", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}

