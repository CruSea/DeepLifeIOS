//
//  NewsFee.swift
//  Walkthroughs
//
//  Created by Buty on 8/17/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//
import UIKit
class NewsFee {
    var title = ""
    var date = ""
    var image = UIImage(named: "1")
    var content = ""
    var courses = [News]()
    
    init(title: String, date: String, image: UIImage, content: String, courses: [News])
    {
        self.title = title
        self.date = date
        self.image = image
        self.content = content
        self.courses = courses
    }
    
    static func TotalIOSBlueprint() -> NewsFee
    {
        let course1 = News(title: "Master the Swift", date: "2016-8-8", image: UIImage(named: "1")!, content: "Everything you need to learn about Swift to get up and running with iOS Development")
        
        let course2 = News(title: "Build Motivational", date: "2016-8-8", image: UIImage(named: "2")!, content: "Start iOS Development Dive-Deep Training By Building Your First iOS App!")
        
        let course3 = News(title: "Build Music", date: "2016-8-8", image: UIImage(named: "3")!, content: "We All Love Music. Let's Build A Breath-Takingly Beautiful Music Playlist App")
        
        
        
        let courses = [course1, course2, course3]
        let totaliOSBlueprint = NewsFee(title: "Total iOS Blueprint", date: "2016-8-8", image: UIImage(named: "tib")!, content: "Everything you need to develop iOS Apps. No experience required. Build more than 70 projects in your portfolio.", courses: courses)
        
        return totaliOSBlueprint
    }
    
}
