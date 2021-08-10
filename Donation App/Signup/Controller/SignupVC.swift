//
//  ViewController.swift
//  Donation App
//
//  Created by Eric Morales on 8/2/21.
//

import UIKit

class SignupVC: UIViewController {
    // MARK: Properties
    lazy var formData = SignupPage(parentVC: self.view)
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemGray6
        self.view.addSubview(formData)
    }
    
    @objc func loginButtonPressed() {
        UIApplication.shared.windows.first?.rootViewController = LoginVC()
    }
    
    @objc func joinButtonPressed() {
        
        let errorLabel = UILabel()
        let newUser = NewUser(name:formData.nameTextField.text!, email: formData.emailTextField.text!, address: formData.streetAddressTextField.text!, city: formData.cityTextField.text!, zipcode: formData.zipCodeTextField.text!, password: formData.passwordTextField.text!)
        SignUp().SignUpTap(NewUser: newUser, errorLabel: errorLabel)
        
        
    }
}

