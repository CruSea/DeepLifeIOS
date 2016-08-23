//
//  ViewController.swift
//  DeepLifeApp
//
//  Created by Aman on 7/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit
import CoreData

class newsfeed: UITableViewController
{
    var List: Array<AnyObject> = []
    
    // MARK: - View Controller Lifecycle
    
    @IBOutlet weak var menubar: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menubar.target = revealViewController()
            menubar.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rightViewRevealWidth = 150
            menubar.target = revealViewController()
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
            
        }
        
        
        
        // Make the row height dynamic
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.count
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let Context: NSManagedObjectContext = AppDel.managedObjectContext
        let request = NSFetchRequest(entityName: "Disciples")
        
        List = try! Context.executeFetchRequest(request)
        tableView.reloadData()
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        
        
        let cell: NewsTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! NewsTableViewCell
        
        let data: NSManagedObject = List[indexPath.row] as! NSManagedObject
        
        cell.title?.text = data.valueForKey("fullname") as? String
        cell.newsContent?.text = data.valueForKey("email") as? String
        
        
        
        //  cell.newsImageView!.clipsToBounds = true
        
        let image = data.valueForKey("image") as? NSData
        cell.newsImageView!.image = UIImage(data: image!)
        //  cell.newsImageView!.frame = CGRectMake(40, 60, 40, 40)
        
        
        
        
        // cell.newsImageView!.image = data.valueForKey("image")! as? UIImage
        cell.dateNews?.text = data.valueForKey("phonenumber") as? String
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.contentView.backgroundColor = UIColor.clearColor()
        
        cell.layer.backgroundColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [1.0, 1.0, 1.0, 1.0])
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 3.0
        cell.layer.shadowOffset = CGSizeMake(-1, 1)
        cell.layer.shadowOpacity = 0.5
        //  cell.contentView.addSubview(whiteRoundedView)
        //  cell.contentView.sendSubviewToBack(whiteRoundedView)
    }
    
}



