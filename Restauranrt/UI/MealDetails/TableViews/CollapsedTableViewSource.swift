//
//  CollapsedTableView.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/19/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import Foundation
import UIKit

class CollapsedTableViewSource: NSObject, UITableViewDataSource {
    
    var data = [Addition]()
    
    init(data: [Addition]) {
        self.data = data
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "CheckBoxTableViewCell", bundle: nil), forCellReuseIdentifier: "CheckBoxTableViewCell")
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CheckBoxTableViewCell", for: indexPath) as? CheckBoxTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}

extension CollapsedTableViewSource: UITableViewDelegate {
    
}
