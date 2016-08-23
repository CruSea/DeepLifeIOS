//
//  DataTableViewController.swift
//  TableExample
//
//  Created by Ralf Ebert on 27/04/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class share: UITableViewController {
    
    // MARK: - UITableViewDataSource
    

 
    @IBAction func increase(sender: AnyObject) {
  
    
    }
    @IBAction func incnumber(sender: AnyObject) {
   
    
    
    }
    
    
  
    
    
    @IBAction func decnumber(sender: AnyObject) {
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 1
    
    
    
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Your Report"
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("sharecell", forIndexPath: indexPath)
        
        cell.textLabel?.text = " For how many people did you preach "
        cell.detailTextLabel?.text
        return cell
    }
    
}
