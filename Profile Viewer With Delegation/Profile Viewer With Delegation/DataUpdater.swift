//
//  DataUpdater.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/26/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

protocol DataUpdater: class {
    func updateData(newData: Describable)
}
