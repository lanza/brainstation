//
//  ProfileViewController.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    var delegate: DataUpdater?
    var updateData: ((Person) -> ())?
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
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let newModel = model {
        self.delegate?.updateData(newData: newModel)
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if let newModel = model {
            self.delegate?.updateData(newData: newModel)
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
