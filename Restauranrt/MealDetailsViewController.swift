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

        var sizes = [Size]()
        sizes.append(Size(id: "1", name: "Big", checked: true, BD: "4.500BD"))
        sizes.append(Size(id: "2", name: "Medium", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "3", name: "Normal", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "4", name: "Small", checked: false, BD: "4.500BD"))
        let mealHeader = MealHeader(imageUrl: "https://www.vhv.rs/dpng/d/15-150323_transparent-seafood-pasta-png-png-download.png", rating: 3.5, name: "Pasta", quantity: 1, sizes: sizes )
        
        var additions = [Addition]()
        additions.append(Addition(id: "1", name: "Tomato", checked: false))
        additions.append(Addition(id: "2", name: "Cheese", checked: false))
        
        let sectionModel = SectionModel(name: "Additions", additions: additions)
        data.append(mealHeader)
        data.append(sectionModel)
        
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
