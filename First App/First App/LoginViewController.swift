//
//  ViewController.swift
//  First App
//
//  Created by Eric Lanza on 4/30/18.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    let correctUsername = "Eric"
    let correctPassword = "asdf"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        print("Login button was pressed.")
        
        if let username = self.usernameField.text, let password = self.passwordField.text {
            if username == correctUsername && password == correctPassword {
                print("Login successful")
                return
            }
        print("Incorrect credentials")
        }
        
    }
    
}

