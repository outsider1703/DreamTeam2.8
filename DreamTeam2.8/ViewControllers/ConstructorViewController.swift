//
//  ConstructorViewController.swift
//  DreamTeam2.8
//
//  Created by Elena Igumenova on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit

class ConstructorViewController: UIViewController {

    @IBOutlet var foodButtons: [UIButton]!
    @IBOutlet var textLabel: UILabel!
    
    let fish = DishesDataManager.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Выберите ингредиенты"


    }
    


    @IBAction func foodButtonsPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0: performSegue(withIdentifier: "showResult", sender: self)
        case 1: performSegue(withIdentifier: "showResult", sender: self)
        case 2: performSegue(withIdentifier: "showResult", sender: self)
        case 3: performSegue(withIdentifier: "showResult", sender: self)
        default:
            break
        }

    }
}
extension ConstructorViewController {
}

