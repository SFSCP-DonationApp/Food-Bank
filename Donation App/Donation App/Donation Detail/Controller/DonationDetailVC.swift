//
//  DonationDetailVC.swift
//  Donation App
//
//  Created by Eric Morales on 8/7/21.
//

import UIKit

class DonationDetailVC: UIViewController {

    // MARK: Properties
    lazy var donationPage: DonationDetailPage = DonationDetailPage(parentVC: self.view)
    
    // MARK: VC LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray6
        self.view.addSubview(donationPage)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        donationPage.setUpTextFieldsBorders()
    }
    
    // MARK: Methods
    

}
