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
        let addition = data[indexPath.row]
        tableView.register(UINib(nibName: "CheckBoxTableViewCell", bundle: nil), forCellReuseIdentifier: "CheckBoxTableViewCell")
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CheckBoxTableViewCell", for: indexPath) as? CheckBoxTableViewCell else {
            return UITableViewCell()
        }
        cell.nameTextView.text = addition.name
        cell.selectionStyle = .none
        addition.updateChecked = {
            addition.checked = !addition.checked
            if addition.checked {
                cell.checkBoxImageView.image = UIImage(named: "checkSquare")
            } else {
                cell.checkBoxImageView.image = UIImage(named: "square")
            }
        }
        return cell
    }
    
    
}

extension CollapsedTableViewSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        data[indexPath.row].updateChecked!()
    }

}
