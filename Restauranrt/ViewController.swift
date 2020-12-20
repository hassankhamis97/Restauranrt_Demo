//
//  ViewController.swift
//  Restauranrt
//
//  Created by Hassan  khamis  on 12/17/20.
//  Copyright © 2020 Hassan _khamis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToNextPageAction(_ sender: Any) {
        var data = [Any]()
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
        
        var additions2 = [Addition]()
        additions2.append(Addition(id: "1", name: "Tomato", checked: false))
        additions2.append(Addition(id: "2", name: "Cheese", checked: false))
        additions2.append(Addition(id: "3", name: "ay 7aga", checked: false))
        let sectionModel2 = SectionModel(name: "Without", additions: additions2)
        data.append(mealHeader)
        data.append(sectionModel)
        data.append(sectionModel2)
        
        openPage(data)
        
        
        
    }
    @IBAction func secondAction(_ sender: Any) {
        var data = [Any]()
        var sizes = [Size]()
        sizes.append(Size(id: "2", name: "Medium", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "3", name: "Normal", checked: false, BD: "4.500BD"))
        sizes.append(Size(id: "4", name: "Small", checked: false, BD: "4.500BD"))
        let mealHeader = MealHeader(imageUrl: "https://www.vhv.rs/dpng/d/15-150323_transparent-seafood-pasta-png-png-download.png", rating: 5, name: "Pasta", quantity: 1, sizes: sizes )
        
        var additions = [Addition]()
        additions.append(Addition(id: "1", name: "Tomato", checked: false))
        additions.append(Addition(id: "2", name: "Cheese", checked: false))
        
        let sectionModel = SectionModel(name: "Additions", additions: additions)
        
        
        data.append(mealHeader)
        data.append(sectionModel)
        
        openPage(data)
        
        
    }
    
    @IBAction func thirdAction(_ sender: Any) {
        var data = [Any]()
        var sizes = [Size]()
        sizes.append(Size(id: "2", name: "Medium", checked: false, BD: "4.500BD"))
        
        let mealHeader = MealHeader(imageUrl: "https://www.vhv.rs/dpng/d/15-150323_transparent-seafood-pasta-png-png-download.png", rating: 5, name: "Pasta", quantity: 1, sizes: sizes )
        
        var additions = [Addition]()
        additions.append(Addition(id: "1", name: "Tomato", checked: false))
        additions.append(Addition(id: "2", name: "Cheese", checked: false))
        
        let sectionModel = SectionModel(name: "Additions", additions: additions)
        var additions2 = [Addition]()
        additions2.append(Addition(id: "1", name: "Tomato", checked: false))
        additions2.append(Addition(id: "2", name: "Cheese", checked: false))
        additions2.append(Addition(id: "3", name: "ay 7aga", checked: false))
        let sectionModel2 = SectionModel(name: "Without", additions: additions2)
        
        var additions3 = [Addition]()
        additions3.append(Addition(id: "1", name: "Tomato", checked: false))
        additions3.append(Addition(id: "2", name: "Cheese", checked: false))
        additions3.append(Addition(id: "3", name: "ay 7aga", checked: false))
        additions3.append(Addition(id: "4", name: "OK", checked: false))
        additions3.append(Addition(id: "5", name: "NO", checked: false))
        let sectionModel3 = SectionModel(name: "With & Without :D", additions: additions3)
        
        data.append(mealHeader)
        data.append(sectionModel)
        data.append(sectionModel2)
        data.append(sectionModel3)
        openPage(data)
        
    }
    func openPage(_ data: [Any]) {
        let mealDetailVC = storyboard?.instantiateViewController(withIdentifier: "MealDetailsViewController") as? MealDetailsViewController
        
        if let vc = mealDetailVC {
            vc.data = data
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

