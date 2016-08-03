//
//  ViewController.swift
//  DeepLifeApp
//
//  Created by Aman on 7/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
  
    
    
    @IBOutlet weak var swipablecontainer: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.'
        
        
        
        
        let firstswipe = Swipe0(nibName: "Swipe0", bundle: nil)
        
        self.addChildViewController(firstswipe)
        self.swipablecontainer.addSubview(firstswipe.view)
        firstswipe.didMoveToParentViewController(self)
       
        let secondswipe = Swipe1(nibName: "Swipe1", bundle:nil)
        
        var frame1 = secondswipe.view.frame
        frame1.origin.x = self.view.frame.size.width
        secondswipe.view.frame = frame1
        
        self.addChildViewController(secondswipe)
        self.swipablecontainer.addSubview(secondswipe.view)
        secondswipe.didMoveToParentViewController(self)
        
        let thirdswipe = Swipe2(nibName: "Swipe2", bundle:nil)
        
        var frame2 = thirdswipe.view.frame
        frame2.origin.x = self.view.frame.size.width*2
        thirdswipe.view.frame = frame2
        
        self.addChildViewController(thirdswipe)
        self.swipablecontainer.addSubview(thirdswipe.view)
        thirdswipe.didMoveToParentViewController(self)
        

        
        self.swipablecontainer.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height - 66);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

