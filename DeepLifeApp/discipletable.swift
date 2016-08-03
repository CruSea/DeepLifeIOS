//
//  ViewController.swift
//  DeepLifeApp
//
//  Created by Aman on 7/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit
import CoreData

class discipletable: UIViewController {
    
    
           let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let entityDescription = NSEntityDescription.entityForName("Disciples", inManagedObjectContext: moc)
        
        let disciple = Disciplelistt(entity: entityDescription!, insertIntoManagedObjectContext: moc)
        
        disciple.fullname = name.text
        disciple.country = countrytext.text
        disciple.email = emailtext.text
        disciple.phonenumber = phonetext.text
        disciple.sex = sextext.text
        
        do {
            try moc.save()
            name.text = ""
            countrytext.text = ""
            emailtext.text = ""
            phonetext.text = ""
            sextext.text = " Success"
            
            
            
        } catch {
            return
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

