//
//  MainTableViewSource.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class MainTableViewSource: NSObject, UITableViewDataSource {
//extension MealDetailsViewController: UITableViewDataSource {
    var data = [Any]()
    var mealSizesCollectionViewSource: MealSizesCollectionViewSource?
    init(data: [Any]) {
        self.data = data
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if data[indexPath.row] is MealHeader {
            guard let mealHeader = data[indexPath.row] as? MealHeader else {
                return  UITableViewCell()
                
            }
            
            tableView.register(UINib(nibName: "HeaderMealDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderMealDetailsTableViewCell")
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderMealDetailsTableViewCell", for: indexPath) as! HeaderMealDetailsTableViewCell
            cell.mealImageView?.sd_setImage(with: URL(string: mealHeader.imageUrl), placeholderImage: UIImage(named: ""), options: SDWebImageOptions(), completed: nil)
            cell.mealNameTextView.text = (data[indexPath.row] as? MealHeader)?.name
            mealSizesCollectionViewSource = MealSizesCollectionViewSource(data: mealHeader.sizes)
            cell.mealSizesCollectionView.dataSource = mealSizesCollectionViewSource
            cell.mealSizesCollectionView.delegate = mealSizesCollectionViewSource
            return cell
        }
        return UITableViewCell()
    }
    
}

extension MainTableViewSource: UITableViewDelegate {
    
}
