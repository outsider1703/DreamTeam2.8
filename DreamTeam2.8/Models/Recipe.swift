//
//  Recipe.swift
//  DreamTeam2.8
//
//  Created by Elena Igumenova on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

struct Recipe {
    let name: String
    let description: String
    
}

extension Recipe {
    static func getRecipe() -> [Recipe] {
        return [
            Recipe(name: <#T##String#>, description: <#T##String#>)
        ]
    }
}
