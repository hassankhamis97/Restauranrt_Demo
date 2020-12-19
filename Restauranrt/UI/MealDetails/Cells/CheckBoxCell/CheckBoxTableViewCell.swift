//
//  CheckBoxTableViewCell.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/19/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class CheckBoxTableViewCell: UITableViewCell {

    @IBOutlet weak var checkBoxImageView: UIImageView!
    @IBOutlet weak var nameTextView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
