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
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.textColor = .white
        
        return label
    }()
    var donationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.textColor = .white
        label.textAlignment = .center
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
        // AmountDonatedCell view cell
        self.contentView.backgroundColor = .systemGray2
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true

        
        // MARK: Adding views to the hierarchy
        self.addSubview(nameLabel)
        self.addSubview(donationLabel)
        
        // MARK: Constraints
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            donationLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 20),
            donationLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
    }
    
    func setContents(userName: String) {
        nameLabel.text = "\(userName) you have donated"
        donationLabel.text = "25 individual donations"
        
    }
}
