//
//  Server.swift
//  Login App
//
//  Created by Eric Lanza on 5/7/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation


class Server {
    var registeredUsers: [String: String] = [:]
    var loggedInUser: String?
    var requiredPasswordLength: Int = 8
    
    func createNewUser(username: String?, password: String?) -> (status:Bool, message:String) {
        if let user = username {
            if let pass = password {
                if self.duplicateCheck(username: user) == false {
                    if pass.count >= self.requiredPasswordLength {
                        self.registeredUsers[user] = pass
                        return (true, "Created user successfully!")
                    }
                    else {
                        return (false, "Password is too short!")
                    }
                }
                else {
                    return (false, "Username already exists!")
                }
            }
            else {
                return (false, "Invalid password")
            }
        }
        else {
            return (false, "Invalid Username!")
        }
    }
    
    func duplicateCheck(username: String) -> Bool {
        if self.registeredUsers[username] == nil {
            return false
        }
        return true
    }
    
    func logIn(username: String?, password: String?) -> (status:Bool, message:String) {
        
        if let user = username {
            if let pass = password {
                if let storedPassword = self.registeredUsers[user] {
                    if storedPassword == pass {
                        self.loggedInUser = user
                        return (true, "Login successfully")
                    }
                    else {
                        return (false, "Password is invalid")
                    }
                }
                else {
                    return (false, "User does not exist!")
                }
            }
            else {
                return (false, "Password field is empty!")
            }
        }
        else {
            return (false, "Username field is empty!")
        }
    }
}
