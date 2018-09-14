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
    var checkedIn: Bool = true
    var dueDate: Date?
    
    init(title: String) {
        self.title = title
    }
    
}
