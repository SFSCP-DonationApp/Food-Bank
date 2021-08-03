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
        SignupStack(parentVC: self.view)
    }
}

