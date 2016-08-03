//
//  Disciplelist+CoreDataProperties.swift
//  DeepLifeApp
//
//  Created by Aman on 7/27/16.
//  Copyright © 2016 Aman. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Disciplelistt {

    @NSManaged var fullname: String?
    @NSManaged var image: NSData?
    @NSManaged var country: String?
    @NSManaged var phonenumber: String?
    @NSManaged var email: String?
    @NSManaged var sex: String?

}
