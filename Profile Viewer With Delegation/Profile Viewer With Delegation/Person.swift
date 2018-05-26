//
//  Person.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class Person: Describable {
    var name: String?
    var description: String?
    var imageName: String
    
    init(name: String, description: String, imageName: String) {
        self.name = name
        self.description = description
        self.imageName = imageName
    }
}
