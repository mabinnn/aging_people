//
//  ViewController.swift
//  AgingPeople
//
//  Created by Marvin Alganes on 5/16/17.
//  Copyright © 2017 Marvin Alganes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    var list = ["Marvin", "Kevin", "Masato", "Kavya", "Shruta", "Colin", "Tahim", "Charles", "Heather", "Kyle", "Frank", "Anna"]
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        print("first function")
    }
    
    
    // function for all counts within the cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count function")
        return list.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let randAge = Int(arc4random_uniform(100) + 5)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        print("edit function")
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "\(randAge) years old"
        return cell
    }
    
}

