//
//  LoginVC.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/2/21.
//

import UIKit

class LoginVC: UIViewController {
    
    let loginContentView:UIView = {
        let view = UIView()
        return view
    }()
    let backButton: UIButton = {
        let back = UIButton(type: .system)
        back.setTitle("Back", for: .normal)
        back.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        back.addTarget(self, action: #selector(backButtonPressed), for: UIControl.Event.touchUpInside)
        return back
    }()
    let subtitleLabel: UILabel = {
        let subtitle = UILabel()
        subtitle.text = "Welcome Back!"
        subtitle.textAlignment = .center
        subtitle.sizeToFit()
        return subtitle
    }()
    let emailTextField: UITextField = {
        let emailText = UITextField()
        emailText.placeholder = "Email"
        return emailText
    }()
    let passwordTextField: UITextField = {
        let passwordText = UITextField()
        passwordText.placeholder = "Password"
        return passwordText
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginButtonPressed), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let forgotLink: UIButton = {
        let forgotButton = UIButton(type: .system)
        forgotButton.setTitle("Forgot Password?", for: .normal)
        forgotButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        forgotButton.tintColor = .orange
        forgotButton.addTarget(self, action: #selector(forgotPasswordPressed), for: UIControl.Event.touchUpInside)
        return forgotButton
    }()
    let signUpLabel: UILabel = {
        let signIn = UILabel()
        signIn.text = "Don't have an account?"
        signIn.textColor = .orange
        signIn.textAlignment = .center
        signIn.sizeToFit()
        return signIn
    }()
    
    let signUpButton: UIButton = {
        let signup = UIButton(type: .system)
        signup.setTitle("Sign Up", for: .normal)
        signup.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        signup.tintColor = .orange
        signup.addTarget(self, action: #selector(signupPressed), for: UIControl.Event.touchUpInside)
        return signup
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "sfscp_create.png")!)
        setupLoginContentView()
        assignbackground()
    }
    
    func assignbackground(){
        let background = UIImage(named: "sfscp_create.png")
          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.isOpaque = true
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
      }
    
    @objc func backButtonPressed(sender: UIButton!){
        UIApplication.shared.windows.first?.rootViewController = SignupVC()
    }
    @objc func loginButtonPressed(sender: UIButton!){
        print("button pressed!")
        let errorLabel = UILabel()
        let existingUser = ExistingUser(email: emailTextField.text!, password: passwordTextField.text!)
        LogIn().LoginTap(ExistingUser: existingUser, errorLabel: errorLabel)
        
    }
    
    @objc func forgotPasswordPressed(sender: UIButton!){
        print("I forgot my password, help!")
    }
    @objc func signupPressed(sender: UIButton!){
        UIApplication.shared.windows.first?.rootViewController = SignupVC()
    }
}

