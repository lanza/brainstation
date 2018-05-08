//
//  LoginViewController.swift
//  Login App
//
//  Created by Eric Lanza on 5/7/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let server = Server()
    
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var statusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonPressed() {
        let username = self.usernameField.text
        let password = self.passwordField.text
        let response = self.server.logIn(username: username, password: password)
        self.statusLabel.text = response.message
    }
    
    @IBAction func createUserPressed(_ sender: UIButton) {
        let username = self.usernameField.text
        let password = self.passwordField.text
        let response = self.server.createNewUser(username: username, password: password)
        self.statusLabel.text = response.message
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
