//
//  RootViewController.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UpdateData {
    

    @IBOutlet var circleProfilePicture: UIImageView!
    @IBOutlet var truncatedDescription: UILabel!
    @IBOutlet var learnMore: UIButton!
    
    
    var person = Person(name: "Eric Lanza",
                        description: "I am the Production Manager at my church in Boca Raton, Fl.  I started to teach myself swift in my free time.",
                        imageName: "eric-lanza")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = self.person.name
        
        self.circleProfilePicture.layer.cornerRadius = self.circleProfilePicture.frame.size.width / 2.0
        self.circleProfilePicture.clipsToBounds = true
        
        self.truncatedDescription.text = person.description
        self.circleProfilePicture.image = UIImage(named: self.person.imageName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ProfileViewController {
            destination.model = self.person
        }
    }
    
    func updatePerson() {
        self.person = ????
    }

   
}
