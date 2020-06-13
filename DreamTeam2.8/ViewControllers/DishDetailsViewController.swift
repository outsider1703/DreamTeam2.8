//
//  DishDetailsViewController.swift
//  DreamTeam2.8
//
//  Created by MacBook Pro on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit

class DishDetailsViewController: UIViewController {

    @IBOutlet weak var dishNameLabel: UILabel!
    
        var dish: GeneralMenuForTheApplication!
        
        override func viewDidLoad() {
            super.viewDidLoad()

            dishNameLabel.text = dish.garnish
         //   ingredientsLabel.text = "Ингредиенты: \(dish.ingredients)"

        }

    }

