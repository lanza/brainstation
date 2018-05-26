//
//  ProfileViewController.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    weak var delegate: DataUpdater?
    var model: Describable?
    
    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var userName: UITextField!
    @IBOutlet var descriptionBox: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userName.delegate = self
        self.descriptionBox.delegate = self
        
        if let unwrappedPerson = self.model {
            self.title = unwrappedPerson.name
        }
        
        self.title = self.model?.name
        
        if let model = self.model {
            self.profilePicture.image = UIImage(named: model.imageName)
            self.userName.text = model.name
            self.descriptionBox.text = model.description

        // Do any additional setup after loading the view.
    }

}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.model?.name = textField.text
        self.title = textField.text
        if let updatedModel = self.model {
            self.delegate?.updateData(newData: updatedModel)
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n"  // Recognizes enter key in keyboard
        {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        self.model?.description = textView.text
        if let updatedModel = self.model {
            self.delegate?.updateData(newData: updatedModel)
        }
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
