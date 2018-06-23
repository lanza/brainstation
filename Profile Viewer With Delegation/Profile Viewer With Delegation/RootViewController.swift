//
//  RootViewController.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, DataUpdater {
    

    @IBOutlet var circleProfilePicture: UIImageView!
    @IBOutlet var truncatedDescription: UILabel!
    @IBOutlet var learnMore: UIButton!
    
    var person = Person(name: "Eric Lanza",
                                      description: "I am a Florda born native that is beginning to learn iOs development.",
                                      imageName: "eric-lanza")
   
    func updateData(newData: Describable) {
        self.person.name = newData.name
        self.person.description = newData.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        self.circleProfilePicture.layer.cornerRadius = self.circleProfilePicture.frame.size.width / 2.0
        self.circleProfilePicture.clipsToBounds = true
        
        
        self.circleProfilePicture.image = UIImage(named: self.person.imageName)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.title = self.person.name
        self.truncatedDescription.text = person.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ProfileViewController {
            destination.model = self.person
            destination.delegate = self
        }
    }

   
}
