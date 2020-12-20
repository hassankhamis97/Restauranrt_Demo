//
//  CustomButtonView.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/20/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

@IBDesignable class CustomButtonView: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable
    var cornerRadius: CGFloat = 40 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var spacing: CGFloat = 40 {
        didSet {
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing)
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0)
        }
    }
}
