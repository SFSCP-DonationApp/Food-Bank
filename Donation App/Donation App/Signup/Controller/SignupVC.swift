//
//  ViewController.swift
//  Donation App
//
//  Created by Eric Morales on 8/2/21.
//

import UIKit

class SignupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemGray6
        SignupPage(parentVC: self.view)
    }
    
    @objc func loginButtonPressed() {
        UIApplication.shared.windows.first?.rootViewController = LoginVC()
    }
    
    @objc func joinButtonPressed() {
        print("Join button has been tapped.")
    }
}

