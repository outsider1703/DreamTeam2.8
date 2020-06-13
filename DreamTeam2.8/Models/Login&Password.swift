//
//  Login&Password.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let paswword: String
    
    static func getUserData() -> User {
        User(name: "Admin", paswword: "Password")
    }
}
