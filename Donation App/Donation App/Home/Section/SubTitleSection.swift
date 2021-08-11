//
//  SubTitleSection.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import UIKit

struct SubTitleSection: Section {
    
    // MARK: Properties
    var numberOfItems: Int = 1
    let title: String
    
    // MARK: Methods
    init(title: String) {
        self.title = title
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(70))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // section
        let section = NSCollectionLayoutSection(group: group)
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SubTitleCell.self), for: indexPath) as! SubTitleCell
        cell.set(title: title)
        
        return cell
    }
    
}
