//
//  ThirdViewController.swift
//  FirstProject
//
//  Created by aluno on 29/08/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit
import CoreData

protocol NoteDelegate {
    
    func senderNote(note: Notes)
    
}

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var context: UITextField!
    
    var delegate: NoteDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func sendNote(_ sender: Any) {
//        let context_ = context.text!
//        let newNote = Note()
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd.MM.yyyy"
//        let result = formatter.string(from: date)
//
//        // creating a model
//        newNote.title = "title"
//        newNote.dateOfCreatedNote = result
//        newNote.context = context_
//
   //     delegate?.senderNote(note: newNote)
        
        
        
        let coreDao = CoreDao<Notes>(with: "DataModel")

        let note = coreDao.new()
        note.context = context.text!
        coreDao.insert(object: note)

        dismiss(animated: true, completion: nil)
        
        
        
        
    }
    

}
