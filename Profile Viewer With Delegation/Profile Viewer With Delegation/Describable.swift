//
//  Describeable.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

protocol Describable {
    var name: String? { get set }
    var description: String? { get set}
    var imageName: String { get set}
}
