//
//  ViewController.swift
//  Table View
//
//  Created by Eric Lanza on 5/28/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var dataArray: [String] = ["Eric", "Gary", "Keith"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
    }

    // MARK: - UITAbleViewDataSource
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = self.dataArray[indexPath.row]
        return cell
    }

}

