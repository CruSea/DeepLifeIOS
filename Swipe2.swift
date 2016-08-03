//
//  Swipe2.swift
//  DeepLifeApp
//
//  Created by Aman on 7/26/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class Swipe2: UIViewController {

    @IBAction func continuetologinpage(sender: AnyObject) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("loginid") as! login
        self.presentViewController(nextViewController, animated:true, completion:nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
