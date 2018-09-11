//
//  Game.swift
//  VideoGameLibrary
//
//  Created by Caleb Ogles on 9/10/18.
//  Copyright © 2018 Caleb Ogles. All rights reserved.
//

import Foundation

class Game {
    var title: String
    var checkedInOrOut: Bool
    var dueDate: Date?
    var genre: String
    var description: String
    
    init(title: String, checkedInOrOut: Bool, dueDate: Date, genre: String, description: String) {
        self.title = title
        self.checkedInOrOut = checkedInOrOut
        self.dueDate = dueDate
        self.genre = genre
        self.description = description
    }
    
}
