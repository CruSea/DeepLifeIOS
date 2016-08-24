//
//  MainTVC.swift
//  CD-Grocery-Images
//
//  Created by Jason Rybka on 8/16/15.
//  Copyright © 2015 Jason Rybka. All rights reserved.
//

import UIKit
import CoreData

class disctable: UITableViewController, NSFetchedResultsControllerDelegate {
    
    
    
    
    
    @IBOutlet weak var menubar: UIBarButtonItem!
    
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var frc : NSFetchedResultsController = NSFetchedResultsController()
    
    
    
    
    
    func fetchRequest() -> NSFetchRequest {
        
        let fetchRequest = NSFetchRequest(entityName: "Disciples")
        let sortDescriptor = NSSortDescriptor(key: "fullname", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        return fetchRequest
        
    }
    
    
    
    
    func getFRC() -> NSFetchedResultsController {
        
        frc = NSFetchedResultsController(fetchRequest: fetchRequest(), managedObjectContext: moc, sectionNameKeyPath: nil, cacheName: nil)
        return frc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menubar.target = revealViewController()
            menubar.action = "revealToggle:"
            
            revealViewController().rightViewRevealWidth = 150
            menubar.target = revealViewController()
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
        
        
        
        
        frc = getFRC()
        frc.delegate = self
        
        do {
            try frc.performFetch()
        } catch {
            print("Failed to perform initial fetch.")
            return
        }
        
        self.tableView.rowHeight = 100
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "orange-bg"))
        
                self.tableView.reloadData()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        frc = getFRC()
        frc.delegate = self
        
        do {
            try frc.performFetch()
        } catch {
            print("Failed to perform initial fetch.")
            return
        }
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        let numberOfSections = frc.sections?.count
        return numberOfSections!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let numberOfRowsInSection = frc.sections?[section].numberOfObjects
        
        return numberOfRowsInSection!
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.clearColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
            cell.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        // Configure the cell...
        
        cell.textLabel?.textColor = UIColor.darkGrayColor()
        cell.detailTextLabel?.textColor = UIColor.darkGrayColor()
        
        let disclst = frc.objectAtIndexPath(indexPath) as! Disciplelistt
        cell.textLabel?.text = disclst.fullname
        let discemail = disclst.email
        let discphone = disclst.phonenumber
        cell.detailTextLabel!.text = "Contact : \(discphone!)  "
        
        
        
        cell.imageView?.image = UIImage(data: (disclst.image)!)
        cell.imageView?.image?.size
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
        
        cell.contentView.backgroundColor = UIColor.clearColor()
        
        cell.layer.backgroundColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [1.0, 1.0, 1.0, 1.0])
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 3.0
        cell.layer.shadowOffset = CGSizeMake(-1, 1)
        cell.layer.shadowOpacity = 0.5

    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        let managedObject : NSManagedObject = frc.objectAtIndexPath(indexPath) as! NSManagedObject
        moc.deleteObject(managedObject)
        
        do {
            try moc.save()
        } catch {
            print("Failed to save.")
            return
        }
        
    }
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "edit" {
            
            let cell = sender as! UITableViewCell
            let indexPath = tableView.indexPathForCell(cell)
            let itemController : Discedit = segue.destinationViewController as! Discedit
            let disclst : Disciplelistt = frc.objectAtIndexPath(indexPath!) as! Disciplelistt
            itemController.disc = disclst
            
        }
        
    }
    
    
}
