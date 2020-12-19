//
//  MainTableViewSource.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation
import UIKit

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
            tableView.register(UINib(nibName: "HeaderMealDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderMealDetailsTableViewCell")
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderMealDetailsTableViewCell", for: indexPath) as! HeaderMealDetailsTableViewCell
            cell.mealNameTextView.text = (data[indexPath.row] as? MealHeader)?.name
            mealSizesCollectionViewSource = MealSizesCollectionViewSource(data: (data[indexPath.row] as? MealHeader)!.sizes)
            cell.mealSizesCollectionView.dataSource = mealSizesCollectionViewSource
            cell.mealSizesCollectionView.delegate = mealSizesCollectionViewSource
            return cell
        }
        return UITableViewCell()
    }
    
}

extension MainTableViewSource: UITableViewDelegate {
    
}
