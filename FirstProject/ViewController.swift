//
//  ViewController.swift
//  FirstProject
//
//  Created by aluno on 21/08/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func onButton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
}

