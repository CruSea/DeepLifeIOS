//
//  ViewController.swift
//  DeepLifeApp
//
//  Created by Aman on 7/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class schedules: UIViewController {
    
    

    @IBOutlet weak var menubar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            menubar.target = revealViewController()
            menubar.action = "revealToggle:"
            
            revealViewController().rightViewRevealWidth = 150
            menubar.target = revealViewController()
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

