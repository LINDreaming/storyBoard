//
//  Player.swift
//  Ratings
//
//  Created by Linxi on 16/7/26.
//  Copyright © 2016年 china08. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}

