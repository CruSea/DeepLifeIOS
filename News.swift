//
//  News.swift
//  Walkthroughs
//
//  Created by Buty on 8/17/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//



import UIKit

class News
{
    var title = ""
    var date = ""
    var image: UIImage!
    var content = ""
    
    init(title: String, date: String, image: UIImage, content: String)
    {
        self.title = title
        self.date = date
        self.image = image
        self.content = content
    }
}
