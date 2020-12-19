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
//        mainTableView.register(UINib(nibName: "HeaderMealDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderMealDetailsTableViewCell")
        var sizes = [Size]()
        sizes.append(Size(id: "1", name: "Big", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "2", name: "Medium", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "3", name: "Normal", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "4", name: "Small", checked: false, BD: "4.500BD"))
        let mealHeader = MealHeader(image: "", rating: 3.5, name: "Pasta", quantity: 1, sizes: sizes )
        
        
        data.append(mealHeader)
        
        mainTableViewSource = MainTableViewSource(data: data)
        // Do any additional setup after loading the view.
        mainTableView.dataSource = mainTableViewSource
        mainTableView.delegate = mainTableViewSource
//        mainTableView.reloadData()
        
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
