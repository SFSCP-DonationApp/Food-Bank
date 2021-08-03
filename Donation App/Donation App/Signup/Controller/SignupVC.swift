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
        LoginPage(parentVC: self.view)
    }
    
    @objc func loginButtonPressed() {
        print("Login button has been tapped.")
    }
    
    @objc func joinButtonPressed() {
        print("Join button has been tapped.")
    }
}

