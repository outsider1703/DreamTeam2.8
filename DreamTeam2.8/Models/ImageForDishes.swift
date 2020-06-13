//
//  ImageForDishes.swift
//  DreamTeam2.8
//
//  Created by Macbook on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

struct ImageForDishes {
    
    let namaForDishas: String
    let imageForDishas: String
    
}

extension ImageForDishes {
    static func imageForDishes() -> [ImageForDishes] {
        return [
            ImageForDishes(namaForDishas: "Рыба с рисом", imageForDishas: "РысИРыба"),
            ImageForDishes(namaForDishas: "Кортофель по деревенски", imageForDishas: "Кортофель"),
            ImageForDishes(namaForDishas: "Борщ", imageForDishas: "Борщ"),
            ImageForDishes(namaForDishas: "Шашлык из свинины", imageForDishas: "Шашлык"),
            ImageForDishes(namaForDishas: "Салат цезарь для Тёмы", imageForDishas: "Цезарь")
        ]
    }
}
