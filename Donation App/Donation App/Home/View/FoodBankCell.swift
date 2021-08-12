//
//  FoodBankCell.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import UIKit

class FoodBankCell: UICollectionViewCell {
    //Create properties
    static var identifier: String = "FoodBankCell"
    
    let contentStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .leading
        stack.spacing = 0
        
        return stack
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        label.textColor = .white
        
        return label
    }()
    
    var addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textColor = .white
        
        return label
    }()
    var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        
        return label
    }()
    
    let donateButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Donate here", for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.addTarget(self, action: #selector(HomeVC.donateButtonPressed), for: .touchUpInside)
        
        return button
    }()
    
    //Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // FoodBankCell view cell
        self.contentView.backgroundColor = .systemGray2
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
        // MARK: Adding views to the hierarchy
        self.addSubview(contentStackView)
        contentStackView.addArrangedSubview(nameLabel)
        contentStackView.addArrangedSubview(addressLabel)
        contentStackView.addArrangedSubview(hourLabel)
        contentStackView.addArrangedSubview(donateButton)
        
        // MARK: Constraints
        // stackView
        contentStackView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9).isActive = true
        contentStackView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.9).isActive = true
        contentStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        contentStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        donateButton.widthAnchor.constraint(equalTo: contentStackView.widthAnchor).isActive = true
    }
    
    func setContents(foodBank: FoodBanks) {
        nameLabel.text = foodBank.returnName()
        addressLabel.text = foodBank.returnAddress()
        hourLabel.text = foodBank.returnHours()
    }
}

