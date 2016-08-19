//
//  NewsViewController.swift
//  Walkthroughs
//
//  Created by Buty on 8/17/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import SafariServices

class NewsViewController: UITableViewController
{
    var courses: [News]!
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let course1 = News(title: "Master the Swift ", date: "Everything you need to learn about Swift to get up and running with iOS Development", image: UIImage(named: "19")!, content: "http://www.developersacademy.io/4courses")
        
        let course15 = News(title: "Build Snapchat", date: "Create self-destructive photo and video messaging app like Snapchat. Learn Parse, Instant Messaging and Push Notification", image: UIImage(named: "15")!, content: "http://www.developersacademy.io/")
        
        courses = [course1, course15]
        
        // Make the row height dynamic
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Course Cell", forIndexPath: indexPath) as! CourseTableViewCell
        
        cell.course = courses[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    // MARK: - Show Webpage with SFSafariViewController
    
    
    
}

extension NewsViewController : SFSafariViewControllerDelegate
{
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}
