//
//  NewsTableViewCell.swift
//  DeepLifeApp
//
//  Created by Buty on 8/19/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
     @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var dateNews: UILabel!
    
    @IBOutlet weak var newsContent: UITextView!
  
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
        
        // Configure the view for the selected state
    }
    
    
    
}
