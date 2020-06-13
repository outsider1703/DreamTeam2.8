//
//  Login&Password.swift
//  DreamTeam2.8
//
//  Created by Apple on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

struct User {
    let login: String
    let name: String
    let surName: String
    let paswword: String
    let image: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    
    static func getUserData() -> User {
        User(login: "Admin", name: "Ирина", surName: "Богута", paswword: "Password", image: "profile")
    }
}
