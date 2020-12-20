//
//  Addition.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation

class Addition {
    let id: String
    let name: String
    var checked: Bool
    var updateChecked: (() -> Void)?
    
    init(
        id: String,
        name: String,
        checked: Bool
    ) {
        self.id = id
        self.name = name
        self.checked = checked
    }
}
