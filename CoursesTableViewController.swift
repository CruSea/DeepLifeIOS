//
//  CoursesTableViewController.swift
//  Developers Academy
//
//  Created by Duc Tran on 11/27/15.
//  Copyright © 2015 Developers Academy. All rights reserved.
//

import UIKit
import SafariServices
import LocalAuthentication

class CoursesTableViewController: UITableViewController
{
    var programs: [NewsFee] = [NewsFee.TotalIOSBlueprint()]
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make the row height dynamic
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    
        // the first screen of the app
        // if walkthroughs haven't been shown, let's show the walkthroughs
    }
    
  
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return programs.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programs[section].courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Course Cell", forIndexPath: indexPath) as! CourseTableViewCell
        
        let program = programs[indexPath.section]
        let courses = program.courses
        cell.course = courses[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
    }
    
    // MARK: - Show Webpage with SFSafariViewController
    
    }

extension CoursesTableViewController : SFSafariViewControllerDelegate
{
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}












