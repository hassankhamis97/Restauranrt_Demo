//
//  MealSizesCollectionViewSource.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation
import UIKit

class MealSizesCollectionViewSource: NSObject, UICollectionViewDataSource {
    var data = [Size]()

    init(data: [Size]) {
        self.data = data
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        collectionView.register(UINib(nibName: "SizeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SizeCollectionViewCell")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizeCollectionViewCell", for: indexPath) as! SizeCollectionViewCell
        cell.nameTextView.text = data[indexPath.row].name
        cell.sizeBDTextView.text = data[indexPath.row].BD
        cell.checkSizeImageView.image = UIImage(named: "plusSquare")
        return cell
    }
    
    
}

extension MealSizesCollectionViewSource: UICollectionViewDelegate {

    
}

extension MealSizesCollectionViewSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        // Centering if there are fever pages
        let itemSize: CGSize? = (collectionViewLayout as? UICollectionViewFlowLayout)?.itemSize
        let spacing: CGFloat? = (collectionViewLayout as? UICollectionViewFlowLayout)?.minimumLineSpacing

        let count: Int = self.collectionView(collectionView, numberOfItemsInSection: section)
        let totalCellWidth = (itemSize?.width ?? 0.0) * CGFloat(count)
        let totalSpacingWidth = (spacing ?? 0.0) * CGFloat(((count - 1) < 0 ? 0 : count - 1))
        let leftInset: CGFloat = (collectionView.bounds.size.width - (totalCellWidth + totalSpacingWidth)) / 2
        if leftInset < 0 {
            let inset: UIEdgeInsets? = (collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset
            return inset!
        }
        let rightInset: CGFloat = leftInset
        let sectionInset = UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
        return sectionInset
    }
}
