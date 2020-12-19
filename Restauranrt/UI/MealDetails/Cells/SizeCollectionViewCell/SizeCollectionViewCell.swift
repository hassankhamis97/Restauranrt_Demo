//
//  CollectionViewCell.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class SizeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameTextView: UILabel!
    @IBOutlet weak var sizeBDTextView: UILabel!
    @IBOutlet weak var checkSizeImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        checkSizeImageView.layer.cornerRadius = checkSizeImageView.frame.width / 2
        // Initialization code
    }
    
    

}
