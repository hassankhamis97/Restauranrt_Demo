//
//  MealDetailsViewController.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/18/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class MealDetailsViewController: UIViewController  {

    @IBOutlet weak var mainTableView: UITableView!
    
    var data = [Any]()
    var mainTableViewSource: MainTableViewSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.contentInset = UIEdgeInsets(top: 0,left: 0,bottom: 90,right: 0)
        
        
        mainTableViewSource = MainTableViewSource(data: data)
        // Do any additional setup after loading the view.
        mainTableView.dataSource = mainTableViewSource
        mainTableView.delegate = mainTableViewSource
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
