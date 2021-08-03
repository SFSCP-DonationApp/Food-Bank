//
//  SignupStack.swift
//  Donation App
//
//  Created by Eric Morales on 8/2/21.
//

import UIKit

class SignupPage: UIView {
    // MARK: Properties
    // Title and Subtitle
    let topStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .center // perpendicular to axis
        stack.spacing = 10
        
        return stack
    }()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 42, weight: .regular)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Donation App"
        
        return label
    }()
    let subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Sign up and donate!"
        
        return label
    }()
    
    // Form
    let formStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .fill // perpendicular to axis
        stack.spacing = 15
        
        return stack
    }()
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Name"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        
        return textField
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        
        return textField
    }()
    let streetAddressTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Street Address"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        
        return textField
    }()
    let formHorizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually // direction of axis
        stack.alignment = .center // perpendicular to axis
        stack.spacing = 10
        
        return stack
    }()
    let cityTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "City"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        
        return textField
    }()
    let zipCodeTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Zipcode"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    // BottomStack
    let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .center // perpendicular to axis
        stack.spacing = 10
        
        return stack
    }()
    let joinButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemYellow
        button.tintColor = .systemGray
        button.contentHorizontalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Join", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(SignupVC.joinButtonPressed), for: .touchUpInside)
        
        return button
    }()
    let bottomHorizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fill // direction of axis
        stack.alignment = .center // perpendicular to axis
        stack.spacing = 5
        
        return stack
    }()
    let promptLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.text = "Already have an account?"
        
        return label
    }()
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log In", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(SignupVC.loginButtonPressed), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(parentVC viewController: UIView) {
        self.init()
        setup(viewController: viewController)
    }
    
    func setup(viewController: UIView) {
        // MARK: View's hirerachy
        // topStack
        viewController.addSubview(topStack)
        topStack.addArrangedSubview(titleLabel)
        topStack.addArrangedSubview(subTitleLabel)
        
        // formStack
        viewController.addSubview(formStack)
        formStack.addArrangedSubview(nameTextField)
        formStack.addArrangedSubview(emailTextField)
        formStack.addArrangedSubview(streetAddressTextField)
        formHorizontalStack.addArrangedSubview(cityTextField)
        formHorizontalStack.addArrangedSubview(zipCodeTextField)
        formStack.addArrangedSubview(formHorizontalStack)
        formStack.addArrangedSubview(passwordTextField)
        
        // bottomStack
        viewController.addSubview(bottomStack)
        bottomStack.addArrangedSubview(joinButton)
        bottomStack.addArrangedSubview(bottomHorizontalStack)
        bottomHorizontalStack.addArrangedSubview(promptLabel)
        bottomHorizontalStack.addArrangedSubview(loginButton)
        
        // MARK: Constraints
        NSLayoutConstraint.activate([
            // topStack
            topStack.topAnchor.constraint(equalTo: viewController.safeAreaLayoutGuide.topAnchor, constant: 60),
            topStack.centerXAnchor.constraint(equalTo: viewController.centerXAnchor),
            topStack.widthAnchor.constraint(equalTo: viewController.widthAnchor, multiplier: 0.8),
            
            // formStack
            formStack.topAnchor.constraint(equalTo: topStack.bottomAnchor, constant: 70),
            formStack.widthAnchor.constraint(equalTo: viewController.widthAnchor, multiplier: 0.8),
            formStack.centerXAnchor.constraint(equalTo: viewController.centerXAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            streetAddressTextField.heightAnchor.constraint(equalToConstant: 50),
            cityTextField.heightAnchor.constraint(equalToConstant: 50),
            zipCodeTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            // bottomStack
            bottomStack.topAnchor.constraint(equalTo: formStack.bottomAnchor, constant: 60),
            bottomStack.centerXAnchor.constraint(equalTo: viewController.centerXAnchor),
            bottomStack.widthAnchor.constraint(equalTo: viewController.widthAnchor, multiplier: 0.8),
            joinButton.widthAnchor.constraint(equalTo: bottomStack.widthAnchor),
            loginButton.heightAnchor.constraint(equalTo: promptLabel.heightAnchor)
        ])
    }
}
