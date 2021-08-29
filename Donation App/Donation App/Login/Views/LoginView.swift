//
//  LoginView.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/2/21.
//

import UIKit

extension LoginVC {
    //SETUP the contents of the view i.e the components
    
    func setupLoginContentView(){
        //Add the view to the view controller
        view.addSubview(loginContentView)
        //add subviews to the view itself
        loginContentView.addSubview(backButton)
        loginContentView.addSubview(subtitleLabel)
        loginContentView.addSubview(emailTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        loginContentView.addSubview(forgotLink)
        loginContentView.addSubview(signUpLabel)
        loginContentView.addSubview(signUpButton)
        
        //setup autolayout
        loginContentView.translatesAutoresizingMaskIntoConstraints = false
        
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        setupBackButton()
        setupLoginLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupForgotLink()
        setupSignUpLabel()
        setupSignUpButton()
        
    }
    func setupBackButton(){
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.isUserInteractionEnabled = true
        backButton.backgroundColor = .clear
        backButton.tintColor = .black
        backButton.isHidden = true
        //set up the constraints
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        backButton.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
    }
    
    func setupLoginLabel(){
        subtitleLabel.textColor = .black
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 36)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 120).isActive = true
        //set the contraints
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.isUserInteractionEnabled = true
        emailTextField.backgroundColor = .white
        emailTextField.frame.size.width = 200
        emailTextField.frame.size.height = 20
        emailTextField.layer.cornerRadius = 5
        //set the constraints
        emailTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 60).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupPasswordTextField(){
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isUserInteractionEnabled = true
        passwordTextField.backgroundColor = .white
        passwordTextField.frame.size.width = 200
        passwordTextField.frame.size.height = 20
        passwordTextField.layer.cornerRadius = 5
        //set the constraints
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 50).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupLoginButton(){
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.isUserInteractionEnabled = true
        loginButton.backgroundColor = .systemYellow
        loginButton.tintColor = .white
        loginButton.frame.size.width = 200
        loginButton.frame.size.height = 30
        loginButton.layer.cornerRadius = 5
        //set the constraints
        loginButton.topAnchor.constraint(equalTo: forgotLink.bottomAnchor, constant: 20).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
    }
    
    func setupForgotLink(){
        forgotLink.translatesAutoresizingMaskIntoConstraints = false
        forgotLink.isUserInteractionEnabled = true
        forgotLink.backgroundColor = .clear
        forgotLink.tintColor = .systemYellow
        //set up the constraints
        forgotLink.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        forgotLink.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
    }
    func setupSignUpLabel(){
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.textColor = .black
        signUpLabel.font = UIFont.systemFont(ofSize: 15)
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor, constant: 30).isActive = true
        signUpLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50).isActive = true
        
    }
    func setupSignUpButton(){
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.isUserInteractionEnabled = true
        signUpButton.backgroundColor = .clear
        signUpButton.tintColor = .black
        //set up the constraints
        signUpButton.centerYAnchor.constraint(equalTo: signUpLabel.centerYAnchor).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: signUpLabel.centerXAnchor, constant: 120).isActive = true
    }
}

