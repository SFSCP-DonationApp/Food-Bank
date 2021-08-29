//
//  Section.swift
//  Donation App
//
//  Created by Eric Morales on 8/11/21.
//

import UIKit

protocol Section {
    var numberOfItems: Int { get }
    
    func layoutSection() -> NSCollectionLayoutSection?
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
