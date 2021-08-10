//
//  FoodBankCell.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/6/21.
//

import UIKit

class FoodBankCell: UICollectionViewCell {
    //Create properties
    static var identifier: String = "FoodBankCell"
    
    //This is the backgroundview of the card
    let backgroundImage: UIImageView = {
        let background = UIImageView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .systemGray2
        background.layer.cornerRadius = 10
        
        return background
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillProportionally
        
        return stack
    }()
    
    var nameLabel: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.numberOfLines = 0
        name.textAlignment = .left
        name.font = UIFont(name: "Helvetica", size: 22)
        name.textColor = UIColor(white:1.0, alpha: 0.8)
        
        return name
    }()
    
    var addressLabel: UILabel = {
        let address = UILabel()
        address.text = "Address of foodbank1"
        address.translatesAutoresizingMaskIntoConstraints = false
        address.numberOfLines = 0
        address.textAlignment = .left
        address.font = UIFont(name: "Helvetica", size: 16)
        address.textColor = UIColor(white:1.0, alpha: 0.8)
        return address
    }()
    var hourLabel: UILabel = {
        let hours = UILabel()
        hours.translatesAutoresizingMaskIntoConstraints = false
        hours.numberOfLines = 0
        hours.textAlignment = .left
        hours.font = UIFont(name: "Helvetica", size: 17)
        hours.textColor = UIColor(white:1.0, alpha: 0.8)
        return hours
    }()
    
    let donateButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Donate here", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(donateButtonPressed), for: UIControl.Event.touchUpInside)
        
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
        //Add the view to the hierarchy
        self.addSubview(backgroundImage)
        backgroundImage.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(addressLabel)
        stackView.addArrangedSubview(hourLabel)
        stackView.addArrangedSubview(donateButton)
        
        //Add the constraints
        //background Image
        backgroundImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5).isActive = true
        // stackView
        stackView.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.5).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.layoutMarginsGuide.heightAnchor, multiplier: 0.6).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        //name label
//        nameLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 5).isActive = true
//        nameLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5).isActive = true
//
//        // address label
//        addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
//        addressLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
//
//        //hours label
//        hourLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 5).isActive = true
//        hourLabel.leadingAnchor.constraint(equalTo: addressLabel.leadingAnchor).isActive = true
//        hourLabel.tintColor = .white
        
        //donate button
//        donateButton.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -20).isActive = true
//        donateButton.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor).isActive = true
        donateButton.backgroundColor = .orange
//        donateButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        donateButton.layer.cornerRadius = 10
        donateButton.tintColor = .white
    }
    
    func setContents(foodBank: FoodBanks) {
        nameLabel.text = foodBank.returnName()
        addressLabel.text = foodBank.returnAddress()
        hourLabel.text = foodBank.returnHours()
    }
    
    @objc func donateButtonPressed(sender: UIButton!){
        print("I want to donate here")
    }
}
