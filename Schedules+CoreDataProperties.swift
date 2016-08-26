//
//  Schedules+CoreDataProperties.swift
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

extension Schedules {

    @NSManaged var alarm_repeat: String?
    @NSManaged var alarm_time: String?
    @NSManaged var disciple_phone: String?
    @NSManaged var discription: String?
    @NSManaged var tiltle: String?

}
