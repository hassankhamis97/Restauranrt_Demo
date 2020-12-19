//
//  Size.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation

class Size {
    let id: String
    let name: String
    var checked: Bool
    let BD: String
    
    init(id: String, name: String, checked: Bool, BD: String) {
        self.id = id
        self.name = name
        self.checked = checked
        self.BD = BD
    }
}
