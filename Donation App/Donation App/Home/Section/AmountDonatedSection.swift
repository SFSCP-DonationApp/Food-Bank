//
//  AmountDonatedSection.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import Foundation
import UIKit

struct AmountDonatedSection: Section {

    
    //Define properties
    let numberOfItems: Int = 1
    let userName: String
    
    //Define methods
    init(userName name: String) {
        self.userName = name
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        //item size
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //group size
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        //section size
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 90, trailing: 10)
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: AmountDonatedCell.self), for: indexPath) as! AmountDonatedCell
            cell.setContents(userName: userName)
            
            return cell
        }
}
