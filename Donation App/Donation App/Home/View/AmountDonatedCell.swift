//
//  AmountDonatedCell.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import UIKit

class AmountDonatedCell: UICollectionViewCell {
    //Create properties
    static var identifier: String = "AmountDonatedCell"
    
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
    
    var donationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textAlignment = .left
        label.font = UIFont(name: "Helvetica", size: 16)
        label.textColor = UIColor(white:1.0, alpha: 0.8)
        return label
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
        stackView.addArrangedSubview(donationLabel)
        
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
        
    }
    
    func setContents(userName: String) {
        nameLabel.text = "\(userName) you have donated"
        donationLabel.text = "25 individual donations"
        
    }
}
