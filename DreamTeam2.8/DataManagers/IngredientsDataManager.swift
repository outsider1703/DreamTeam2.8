//
//  File.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

class IngredientsDataManager {
    
    static let sharedIngredient = IngredientsDataManager()
    
    private init() {}
    
    let meat = ["Рыба", "Свинина", "Говядина", "Курица"]
    
    let ingredients = ["Морковь", "Лук", "Чеснок",
                      "Томат", "Капуста", "Свекла", "Картофель"]
    
    let garnish = ["Макароны", "Гречка", "Рис", "Картофель"]
    
}
