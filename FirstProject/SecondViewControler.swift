//
//  SecondViewControler.swift
//  FirstProject
//
//  Created by aluno on 28/08/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit
import CoreData

class SecondViewControler: UITableViewController {

    
    
    @IBOutlet var tableview: UITableView!
    
    
    let coreDao = CoreDao<Notes>(with: "DataModel")
    
    var notes = [Notes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notes = coreDao.fetchAll()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        notes = coreDao.fetchAll()
        tableview.reloadData()
    }
    
    @IBAction func addCar(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
         // let controller = segue.destination as! ThirdViewController
         //   controller.delegate = self
        }
    }
    
    // 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 2
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    // 3x
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)
    
        
        
        cell.textLabel?.text =  notes[indexPath.row].context
        
        return cell
    }
}

extension SecondViewControler {
    
//    func senderNote(note: Notes) {
//        note.append(note.context)
//        tableview.reloadData()
//    }
    
}
