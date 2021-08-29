//
//  HomeVC.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import UIKit

class HomeVC: UIViewController {
    // MARK: Properties
    var collectionView: UICollectionView!
    
    let foodBanks: [FoodBanks] = [FoodBanks(name: "Food Bank Distribution Center", address: "4000 Redwood Rd, New York PR 00791", hours: "8:00 am - 12:00 pm"), FoodBanks(name: "Alameda County Community Food Bank", address: "7900 Edgewater Dr", hours: "8:30 am - 5:00 pm"), FoodBanks(name: "Project Outreach Inc-E Oakland", address: "6629 Bancroft Ave", hours: "8:00 am - 4:00 pm"), FoodBanks(name: "California Association of Food Banks", address: "1624 Franklin St", hours: "8:00 am - 5:00 pm")]
    
    lazy var sections: [Section] = [
            TitleSection(title: "Home"),
            AmountDonatedSection(userName: "Ezra"),
            SubTitleSection(title: "Food Banks"),
            FoodBankSection(items: foodBanks)
       ]
       lazy var collectionViewLayout: UICollectionViewLayout = {
           var sections = self.sections
           let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
               
               return sections[sectionIndex].layoutSection()
           }
           return layout
       }()

    // MARK: VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Home"
        self.view.backgroundColor = .white
        setupCollectionView()
    }

    // MARK: Methods
    func setupCollectionView() {
        // properties
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .white

        collectionView.dataSource = self
        collectionView.delegate = self

        // register the cells
        collectionView.register(TitleCell.self, forCellWithReuseIdentifier: TitleCell.identifier)
        collectionView.register(AmountDonatedCell.self, forCellWithReuseIdentifier: AmountDonatedCell.identifier)
        collectionView.register(SubTitleCell.self, forCellWithReuseIdentifier: SubTitleCell.identifier)
        collectionView.register(FoodBankCell.self, forCellWithReuseIdentifier: FoodBankCell.identifier)

        // adding to the view
        self.view.addSubview(collectionView)

        // reloads all data in collectionView
        collectionView.reloadData()
    }
    
    @objc func donateButtonPressed() {
        
        let rootVC = DonationDetailVC()
        //rootVC.foodBankName = "Food Bank Distribution Center"

        let navigationController = UINavigationController(rootViewController: rootVC)
        navigationController.setNavigationBarHidden(true, animated: true)
        present(navigationController, animated: true, completion: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections[section].numberOfItems
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
    }}
