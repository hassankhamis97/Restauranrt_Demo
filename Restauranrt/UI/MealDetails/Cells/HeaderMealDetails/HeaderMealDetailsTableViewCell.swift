//
//  HeaderMealDetailsTableViewCell.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class HeaderMealDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealNameTextView: UILabel!
    @IBOutlet weak var quantityTextView: UILabel!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    
    
    @IBOutlet weak var mealSizesCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
