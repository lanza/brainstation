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
    @IBOutlet var inputTextField: UITextField!
    
    var messages: [Message] = []
    var messagesDict: [Int:Message] = [:]
    var kbHeight: CGFloat!
    var getFromServerTimer: Timer!
    let chatServerURL = "http://localhost:1337/messages"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Mark: Set notifications for the keyboard showing and hiding
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        inputTextField.delegate = self
        tableView.dataSource = self
        getMessagesFromServer() // Call get data function on initial load
        installDismissKeyboardGestureRecognizer() // Hide keyboard when tapped
//        tableView.contentInset = UIEdgeInsetsMake(0.0, 0.0, 30.0, 0.0) // Inset table view scroll to move from behind the keyboard
        getFromServerTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in self.getMessagesFromServer() } // Set timer to get new                                                             messages every 5 seconds
    }
    
    //    MARK: - Get New Messages
    
    @objc func getMessagesFromServer() {
        Alamofire.request(chatServerURL).responseJSON { response in
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
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var reuseIdentifier: String
        if messages[indexPath.row].username == currentUser {
            reuseIdentifier = "SentTableViewCell"
        } else {
            reuseIdentifier = "ReceivedTableViewCell"
        }
        guard let chatCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ChatTableViewCell else {
            fatalError()
        }
        let newMessage = messages[indexPath.row]
        chatCell.chatTextLabel.text = newMessage.text               // Assign text to chatText
        chatCell.usernameLabel.text = newMessage.username           // Assign text to username
        chatCell.chatTextLabel.sizeToFit()                       // Adjust size of UILabel to fit around text
        chatCell.chatTextLabel.layer.cornerRadius = 5            // Round UI Table View edges
        chatCell.chatTextLabel.layer.masksToBounds = true
        return chatCell
    }
}
// MARK: - Text Field Delegate

extension ViewController: UITextFieldDelegate {
    
    // Offset Table view if keyboard shows
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if view.frame.origin.y == 0 {
                view.frame.origin.y -= keyboardSize.height
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
        if let newText = inputTextField.text {
            let newInput: Parameters = ["text" : newText, "username" : currentUser as Any]
            Alamofire.request(chatServerURL, method: .post, parameters: newInput)
        }
        inputTextField.text = ""
        return true
    }
}

//MARK: - Hide Keyboard on tap outside of textfield
extension UIViewController {
    func installDismissKeyboardGestureRecognizer() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
