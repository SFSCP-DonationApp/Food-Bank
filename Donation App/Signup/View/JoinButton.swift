//
//  JoinButton.swift
//  Donation App
//
//  Created by Eric Morales on 8/2/21.
//

import UIKit

class JoinButton: UIButton {
    // MARK: Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // MARK: Properties
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .systemYellow
        self.tintColor = .systemGray
        self.contentHorizontalAlignment = .center
        self.setTitleColor(.white, for: .normal)
        self.setTitle("Join", for: .normal)
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        //self.addTarget(self, action: #selector(self.goSearchPage), for: .touchUpInside)
    }
}
