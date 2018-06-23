//
//  ViewController.swift
//  Final Project App
//
//  Created by Eric Lanza on 6/18/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit
import Alamofire



class ViewController: UIViewController, UITableViewDataSource {
    
    //    MARK: Set variables for use in functions
    @IBOutlet var tableView: UITableView!
    @IBOutlet var InputTextField: UITextField!
    
    var messages: [Message] = []
    var messagesDict: [Int:Message] = [:]
    var kbHeight: CGFloat!
    var repeatTimer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Mark: Set notifications for the keyboard showing and hiding
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        self.InputTextField.delegate = self //Assign Text Field Delegate
        self.tableView.dataSource = self // Assign Table view data source
        getData() // Call get data function on initial load
        self.hideKeyboard() // Hide keyboard when tapped
        tableView.contentInset = UIEdgeInsetsMake(0.0, 0.0, 30.0, 0.0) // Inset table view scroll to move from behind the keyboard
        repeatTimer =   Timer.scheduledTimer(timeInterval: 5, target: self,
                                             selector: #selector(getData), userInfo: nil, repeats: true) // Set timer to get new messages every 5 seconds
    }
    
    //    Mark: Animate viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //    MARK: - Get New Messages
    
    @objc func getData() {
        Alamofire.request("http://localhost:1337/messages").responseJSON { response in
            if let json = response.result.value as? [[String: Any?]] {
                print("JSON: \(json)") // serialized json response
                
                for dictionary in json {
                    if let chatText = dictionary["text"] as? String,
                        let username = dictionary["username"] as? String,
                        let id = dictionary["id"] as? Int {
                        let message = Message(username: username, text: chatText, id: id)
                        if let _ = self.messagesDict[message.id] {
                            //
                        } else {
                            self.messages.append(message)
                            self.messagesDict[message.id] = message
                        }
                    }
                }
            }
            self.tableView.reloadData()
            
        }
    }
    
    //    MARK: - Set Table View Cells for messages
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create cell
        if self.messages[indexPath.row].username == "Eric" {
            let chatCell = tableView.dequeueReusableCell(withIdentifier: "SentTableViewCell", for: indexPath) as! ChatTableViewCell
            let newText = self.messages[indexPath.row]
            chatCell.chatText.text = newText.text               // Assign text to chatText
            chatCell.username.text = newText.username           // Assign text to username
            chatCell.chatText.sizeToFit()                       // Adjust size of UILabel to fit around text
            chatCell.chatText.layer.cornerRadius = 5            // Round UI Table View edges
            chatCell.chatText.layer.masksToBounds = true
            return chatCell
        } else {
            let chatCell = tableView.dequeueReusableCell(withIdentifier: "ReceivedTableViewCell", for: indexPath) as! ChatTableViewCell
            let newText = self.messages[indexPath.row]
            chatCell.chatText.text = newText.text           // Assign text to chatText
            chatCell.username.text = newText.username       // Assign text to username
            chatCell.chatText.sizeToFit()                   // Adjust size of UILabel to fit around text
            chatCell.chatText.layer.cornerRadius = 5        // Round UI Table View edges
            chatCell.chatText.layer.masksToBounds = true
            return chatCell
        }
    }
}


// MARK: - Text Field Delegate

extension ViewController: UITextFieldDelegate {
    
    
    // Offset Table view if keyboard shows
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
            if messages.count > 0 {
                tableView.scrollToRow(at: IndexPath.init(row: messages.count - 1, section: 0),
                                      at: UITableViewScrollPosition.bottom, animated: false) // Scroll to bottom cell when keyboard is selected
            }
        }
       
    }
    
    
    //Offset Table view when keyboard hides
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if view.frame.origin.y != 0 {
                view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    
    // Send data to server and clear textfield when return is pressed 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let newText = InputTextField.text {
            let newInput: Parameters = ["text" : newText, "username" : "Eric"]
            Alamofire.request("http://localhost:1337/messages", method: .post, parameters: newInput)
        }
        InputTextField.text = ""
        return true
    }
    
}

//MARK: - Hide Keyboard on tap outside of textfield
extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}


