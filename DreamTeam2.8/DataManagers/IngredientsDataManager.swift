//
//  File.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

class IngredientsDataManager {
    
    let meat = ["Рыба", "Свинина", "Говядина", "Курица"]
    
    let vegetables = ["Морковь", "Лук", "Чеснок",
                      "Томат", "Капуста", "Свекла", "Картофель"]
    
    let garnish = ["Макароны", "Гречка", "Рис", "Картофель"]
    
    static let sharedIngredient = IngredientsDataManager()
    
    private init() {}
    
}
