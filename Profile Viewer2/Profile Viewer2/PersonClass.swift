//
//  PersonClass.swift
//  Profile Viewer
//
//  Created by Eric Lanza on 5/8/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var aboutMe: String
    init(firstName: String, lastName: String, aboutMe: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.aboutMe = aboutMe
    }
}
