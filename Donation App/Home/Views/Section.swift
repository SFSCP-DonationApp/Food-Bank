//
//  Section.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/6/21.
//

import Foundation
import UIKit

//here we define a section

protocol Section {
    var numberOfItems: Int { get }
    
    func layoutSection() -> NSCollectionLayoutSection?
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
