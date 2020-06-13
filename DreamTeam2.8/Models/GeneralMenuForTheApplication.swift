//
//  File.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

struct GeneralMenuForTheApplication {
    
    let name: String
    let mainPosition: MainPosition
    let ingredients: [String]?
    var garnish: String? = nil
    
}

//MARK: - Privat Function For Menu
extension GeneralMenuForTheApplication {
    
   static func getGeneralMenu() -> [GeneralMenuForTheApplication] {
    
        return [
            GeneralMenuForTheApplication(name: "Рыба с рисом",
                                         mainPosition: .fish,
                                         ingredients: ["Рыба", "Томат",
                                                       "Лук", "Лимон"],
                                         garnish: "Рис"),
            
            GeneralMenuForTheApplication(name: "Кортофель по деревенски",
                                         mainPosition: .fastFood,
                                         ingredients: ["Соль", "Чеснок",
                                                       "Картофель"]),
            
            GeneralMenuForTheApplication(name: "Борщ",
                                         mainPosition: .soup,
                                         ingredients: ["Картофель", "Свекла",
                                                       "Морковь", "Лук",
                                                       "Капуста"]),
            
            GeneralMenuForTheApplication(name: "Шашлык из свинины",
                                         mainPosition: .meet,
                                         ingredients: ["Свинина", "Лук", "Зелень"],
                                         garnish: "Картофель отварной"),
            
            GeneralMenuForTheApplication(name: "Салат цезарь для Тёмы",
                                         mainPosition: .vegetables,
                                         ingredients: ["Зеленый салат", "Помидоры",
                                                       "Куриное филе","Соус 'Цезарь'",
                                                       "Сливочное масло", "Чеснок",
                                                       "Сыр пармезан"])
        ]
    }
}
