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
    let information: String
    
    
}

//MARK: - Privat Function For Menu
extension GeneralMenuForTheApplication {
    
    static func getGeneralMenu() -> [GeneralMenuForTheApplication] {
        let information = InfoDishesDataManager.sharedDishes
        
        return [
            GeneralMenuForTheApplication(
                name: "Рыба с рисом",
                mainPosition: .fish,
                ingredients: ["Рыба", "Томат",
                              "Лук", "Лимон"],
                garnish: "Рис",
                information: information.fishWithRiceAndVegetablesInfo
            ),
            
            GeneralMenuForTheApplication(
                name: "Кортофель по деревенски",
                mainPosition: .fastFood,
                ingredients: ["Соль", "Чеснок",
                              "Картофель"],
                information: information.rusticPotatoInfo
            ),
            
            GeneralMenuForTheApplication(
                name: "Борщ",
                mainPosition: .soup,
                ingredients: ["Картофель", "Свекла",
                              "Морковь", "Лук",
                              "Капуста"],
                information: information.borschtInfo
            ),
            
            GeneralMenuForTheApplication(
                name: "Шашлык из свинины",
                mainPosition: .meet,
                ingredients: ["Свинина", "Лук", "Зелень"],
                garnish: "Картофель отварной",
                information: information.porkSkewers
            ),
            
            GeneralMenuForTheApplication(
                name: "Салат цезарь для Тёмы",
                mainPosition: .vegetables,
                ingredients: ["Зеленый салат", "Помидоры",
                              "Куриное филе","Соус 'Цезарь'",
                              "Сливочное масло", "Чеснок",
                              "Сыр пармезан"],
                information: information.caesarSalad
            )
        ]
    }
}
