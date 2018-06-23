//
//  NewMessage.swift
//  Final Project App
//
//  Created by Eric Lanza on 6/18/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class Message {
    var username: String
    var text: String
    
    init(text: String, username: String) {
        self.username = username
        self.text = text
    }
}
