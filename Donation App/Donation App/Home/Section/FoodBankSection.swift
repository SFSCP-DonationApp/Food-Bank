//
//  FoodBankSection.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import Foundation
import UIKit

struct FoodBankSection: Section {

    
    //Define properties
    let numberOfItems: Int
    let items: [FoodBanks]!
    
    //Define methods
    init(items: [FoodBanks]) {
        self.numberOfItems = items.count
        self.items = items
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        //item size
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //group size
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8), heightDimension: .fractionalWidth(0.7))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top:0, leading: 10, bottom: 0, trailing: 10)
        
        //section size
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FoodBankCell.self), for: indexPath) as! FoodBankCell
        cell.setContents(foodBank: items[indexPath.item])
            
            return cell
        }
}

