//
//  Notes+CoreDataProperties.swift
//  FirstProject
//
//  Created by aluno on 30/08/19.
//  Copyright © 2019 aluno. All rights reserved.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var titile: String?
    @NSManaged public var context: String?
    @NSManaged public var dateOfContext: NSDate?

}
