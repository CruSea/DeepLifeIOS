//
//  Country+CoreDataProperties.swift
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

extension Country {

    @NSManaged var countrycode: NSNumber?
    @NSManaged var countryid: NSNumber?
    @NSManaged var countryname: String?
    @NSManaged var relationship: Disciplelistt?

}
