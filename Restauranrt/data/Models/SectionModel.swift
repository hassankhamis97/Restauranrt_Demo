//
//  CollapseModel.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/19/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation

class SectionModel {
    let name: String
    let additions: [Addition]
    var collapsed = true
    var updateCollapsed : (() -> Void)?
    
    init(
        name: String,
        additions: [Addition]
    ) {
        self.name = name
        self.additions = additions
    }
}
