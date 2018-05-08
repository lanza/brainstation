//
//  ViewController.swift
//  Navigator
//
//  Created by Eric Lanza on 5/7/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.propertyToSet = "User Profile"
        }
        else if let destination = segue.destination at? ThirdViewController {
            destination.data = ["TestData"]
        }
    }
    

    
    
    
    
}

