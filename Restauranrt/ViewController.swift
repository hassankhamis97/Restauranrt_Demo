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
        let mealDetailVC = storyboard?.instantiateViewController(withIdentifier: "MealDetailsViewController")
        
        if let vc = mealDetailVC {
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}

