////
////  HomeVC.swift
////  Donation App
////
////  Created by Merissa Bridgeman on 8/5/21.
////
//
import UIKit

class HomeVC: UIViewController {
    // MARK: Properties
    var collectionView: UICollectionView!


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
        collectionView.register(FoodBankCell.self, forCellWithReuseIdentifier: FoodBankCell.identifier)

        // adding to the view
        self.view.addSubview(collectionView)

        // reloads all data in collectionView
        collectionView.reloadData()
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
    }
}
