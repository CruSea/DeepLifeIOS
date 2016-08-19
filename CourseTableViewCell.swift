//
//  TableViewCell.swift
//  Developers Academy
//
//  Created by Duc Tran on 11/27/15.
//  Copyright © 2015 Developers Academy. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

   
    @IBOutlet weak var courseImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var courseDescription: UILabel!
    
    @IBOutlet weak var programUrl: UILabel!
    var course: News! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI()
    {
        self.courseImageView.image = course.image
        self.title.text = course.title
        self.courseDescription.text = course.date
        self.programUrl.text = course.content
        
        
        
    }
}
