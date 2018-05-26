//
//  ViewController.swift
//  Profile Viewer
//
//  Created by Eric Lanza on 5/8/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet var circleProfileEricLanza: UIImageView!
    @IBOutlet var circleProfileBradPitt: UIImageView!
    
    
    let ericLanza = Person(firstName: "Eric", lastName: "Lanza", aboutMe: "I like to play ultimate frisbee and sleep!")
    let bradPitt = Person(firstName: "Brad", lastName: "Pitt", aboutMe: "A famous actor who made a bunch of good movies.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleProfileEricLanza.layer.cornerRadius = circleProfileEricLanza.frame.size.width / 2
        circleProfileEricLanza.clipsToBounds = true
        
        circleProfileBradPitt.layer.cornerRadius = circleProfileBradPitt.frame.size.width / 2
        circleProfileBradPitt.clipsToBounds = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let destination = segue.destination as? ProfileViewController {
            if let id = segue.identifier {
                if id == "segueEricLanza" {
                        destination.setProfilePicture = #imageLiteral(resourceName: "ericLanzaSelfie")
                        destination.setFullName = ericLanza.firstName + " " + ericLanza.lastName
                        destination.setAboutMe = ericLanza.aboutMe
                    }
                if id == "segueBradPitt" {
                    destination.setProfilePicture = #imageLiteral(resourceName: "bradPittSelfie")
                    destination.setFullName = bradPitt.firstName + " " + bradPitt.lastName
                    destination.setAboutMe = bradPitt.aboutMe
                }
            }
        }
    }
}
