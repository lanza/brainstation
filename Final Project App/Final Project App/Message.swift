//
//  Messag.swift
//  Final Project App
//
//  Created by Eric Lanza on 6/20/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class Message {
    
    var username: String
    var text: String
    var id: Int
    
    init(username: String, text: String, id: Int) {
        self.username = username
        self.text = text
        self.id = id
    }    
}
