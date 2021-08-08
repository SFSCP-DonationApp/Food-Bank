//
//  DonationDetailPage.swift
//  Donation App
//
//  Created by Eric Morales on 8/7/21.
//

import UIKit

class DonationDetailPage: UIView {
    // MARK: Properties
    let topStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .leading // perpendicular to axis
        stack.spacing = 10
        
        return stack
    }()
    let backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .systemYellow
//        button.tintColor = .systemGray
//        button.contentHorizontalAlignment = .center
//        button.setTitleColor(.black, for: .normal)
        button.setTitle("Back", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        button.setTitleColor(.black, for: .normal)
//        button.layer.cornerRadius = 8
//        button.layer.masksToBounds = true
//        button.addTarget(self, action: #selector(SignupVC.joinButtonPressed), for: .touchUpInside)
        
        return button
    }()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 42, weight: .regular)
        label.tintColor = .systemYellow
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "Donation details"
        
        return label
    }()
    
    let formStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .fill // perpendicular to axis
        stack.spacing = 15
        
        return stack
    }()
    let weightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.tintColor = .systemGray
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "Weight"
        
        return label
    }()
    let weightTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Add the weight"

        return textField
    }()
    let timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.tintColor = .systemGray
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "What time will you come?"
        
        return label
    }()
    let timeTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Add the time"

        return textField
    }()
    
    let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill // direction of axis
        stack.alignment = .center // perpendicular to axis
        stack.spacing = 10
        
        return stack
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
    let checkboxButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.setImage(UIImage(systemName: "rectangle"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .selected)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        
        return button
    }()
    let agreedPromptLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.text = "I agree that all food quality donated has been mantained."
        
        return label
    }()
    
    let joinButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemYellow
        button.tintColor = .systemGray
        button.contentHorizontalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Reserve donation slot!", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(SignupVC.joinButtonPressed), for: .touchUpInside)
        
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
        viewController.addSubview(topStack)
        topStack.addArrangedSubview(backButton)
        topStack.addArrangedSubview(titleLabel)
        
        viewController.addSubview(formStack)
        formStack.addArrangedSubview(weightLabel)
        formStack.addArrangedSubview(weightTextField)
        formStack.addArrangedSubview(timeLabel)
        formStack.addArrangedSubview(timeTextField)
        
        viewController.addSubview(bottomStack)
        bottomStack.addArrangedSubview(bottomHorizontalStack)
        bottomHorizontalStack.addArrangedSubview(checkboxButton)
        bottomHorizontalStack.addArrangedSubview(agreedPromptLabel)
        bottomStack.addArrangedSubview(joinButton)
        
        
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
            
            // bottomStack
            bottomStack.topAnchor.constraint(equalTo: formStack.bottomAnchor, constant: 60),
            bottomStack.centerXAnchor.constraint(equalTo: viewController.centerXAnchor),
            bottomStack.widthAnchor.constraint(equalTo: viewController.widthAnchor, multiplier: 0.8),
            joinButton.widthAnchor.constraint(equalTo: bottomStack.widthAnchor)
         ])
    }
    
    func setUpTextFieldsBorders() {
        setupButtomLine(forTextField: weightTextField)
        setupButtomLine(forTextField: timeTextField)
    }
    
    func setupButtomLine(forTextField textField: UITextField) {
        // create bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)

        bottomLine.backgroundColor = UIColor.systemYellow.cgColor
        
        // Remove border on text field
        textField.borderStyle = .none
        
        // Add the line to the text field
        textField.layer.addSublayer(bottomLine)
    }
}
