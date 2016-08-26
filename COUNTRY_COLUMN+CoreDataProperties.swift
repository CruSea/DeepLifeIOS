//
//  COUNTRY_COLUMN+CoreDataProperties.swift
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

extension COUNTRY_COLUMN {

    @NSManaged var code: String?
    @NSManaged var country_id: String?
    @NSManaged var id: NSNumber?
    @NSManaged var iso3: String?
    @NSManaged var name: String?

}
