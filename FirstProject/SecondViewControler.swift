//
//  SecondViewControler.swift
//  FirstProject
//
//  Created by aluno on 28/08/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class SecondViewControler: UITableViewController {

    var cars = [String]()
    var newCar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cars = ["BMW","Audi","Volkswagen", "Lamborgini"]
        
    }
    
    // 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 2
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    // 3
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)
    
        
        
        cell.textLabel?.text = cars[indexPath.row]
        
        return cell
    }
}
