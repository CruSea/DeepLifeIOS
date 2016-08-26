//
//  User+CoreDataProperties.swift
//  DeepLifeApp
//
//  Created by Aman on 8/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var country: String?
    @NSManaged var email: String?
    @NSManaged var favourite_scripture: String?
    @NSManaged var full_name: String?
    @NSManaged var password: String?
    @NSManaged var phone: String?
    @NSManaged var picture: NSData?

}
