//
//  ProfileViewController.swift
//  Profile Viewer
//
//  Created by Eric Lanza on 5/8/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var fullName: UILabel!
    @IBOutlet var aboutMe: UILabel!
    
    
    
    var setFullName: String?
    var setAboutMe: String?
    var setProfilePicture: UIImage?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profilePicture.image = self.setProfilePicture
        self.fullName.text = self.setFullName
        self.aboutMe.text = self.setAboutMe

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
