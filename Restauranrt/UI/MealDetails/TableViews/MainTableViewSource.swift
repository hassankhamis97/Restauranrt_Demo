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
    var collapsedTableViewSource = [CollapsedTableViewSource]()
    
    
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
            cell.mealNameTextView.text = mealHeader.name
            mealSizesCollectionViewSource = MealSizesCollectionViewSource(data: mealHeader.sizes)
            cell.mealSizesCollectionView.dataSource = mealSizesCollectionViewSource
            cell.mealSizesCollectionView.delegate = mealSizesCollectionViewSource
            cell.minusBtn.addTarget(self, action: #selector(minusBtnAction), for: .touchUpInside)
            cell.plusBtn.addTarget(self, action: #selector(plusBtnAction), for: .touchUpInside)
            cell.quantityTextView.text = String(mealHeader.quantity)
            mealHeader.updateLabel = { value in
                cell.quantityTextView.text = value
            }
            return cell
        } else if data[indexPath.row] is SectionModel {
            let sectionModel = data[indexPath.row] as! SectionModel
            collapsedTableViewSource.append(CollapsedTableViewSource(data: sectionModel.additions))
            tableView.register(UINib(nibName: "CollapsedTableViewCell", bundle: nil), forCellReuseIdentifier: "CollapsedTableViewCell")
            let cell = tableView.dequeueReusableCell(withIdentifier: "CollapsedTableViewCell", for: indexPath) as! CollapsedTableViewCell
            cell.collapsedTableView.delegate = collapsedTableViewSource[indexPath.row - 1]
            cell.collapsedTableView.dataSource = collapsedTableViewSource[indexPath.row - 1]
            
            return cell
        }
        return UITableViewCell()
    }
    
    @objc func minusBtnAction(_ sender: UIButton) {
        if data[0] is MealHeader {
            let mealHeadert = data[0] as! MealHeader
            
            if mealHeadert.quantity > 1 {
                mealHeadert.quantity -= 1
                mealHeadert.updateLabel!(String(mealHeadert.quantity))
            }
            
        }
    }
    
    @objc func plusBtnAction(_ sender: UIButton) {
        if data[0] is MealHeader {
            let mealHeadert = data[0] as! MealHeader
            mealHeadert.quantity += 1
            mealHeadert.updateLabel!(String(mealHeadert.quantity))
        }
    }
    
}

extension MainTableViewSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let sectionModel = data[indexPath.row] as?  SectionModel else {
            return
        }
        if sectionModel.collapsed {
            sectionModel.collapsed = false
            tableView.reloadRows(at: [indexPath], with: .bottom)
        } else {
            sectionModel.collapsed = true
            tableView.reloadRows(at: [indexPath], with: .top)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let sectionModel = data[indexPath.row] as?  SectionModel else {
            return UITableView.automaticDimension
        }
        if !sectionModel.collapsed {
            return CGFloat(100 + sectionModel.additions.count * 28)
        }
        return UITableView.automaticDimension
    }
}
