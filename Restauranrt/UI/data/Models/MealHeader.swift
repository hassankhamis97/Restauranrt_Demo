//
//  MealHeader.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation

class MealHeader {
    let imageUrl: String
    let rating: Double
    let name: String
    var quantity: Int
    var sizes: [Size]
    var updateLabel : ((String) -> Void)?
    
    init(
        imageUrl: String,
        rating: Double,
        name: String,
        quantity: Int,
    sizes: [Size]
    ) {
        self.imageUrl = imageUrl
        self.rating = rating
        self.name = name
        self.quantity = quantity
        self.sizes = sizes
    }
}
