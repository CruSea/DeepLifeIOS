//
//  ViewController.swift
//  SLPopupViewControllerDemo
//
//  Created by Nguyen Duc Hoang on 9/13/15.
//  Copyright © 2015 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class popup: UIViewController,MyPopupViewControllerDelegate {
    @IBAction func btnBottomTop(sender:UIButton) {
        self.displayViewController(.BottomTop)
    }
    @IBAction func btnTopBottom(sender:UIButton) {
        self.displayViewController(.TopBottom)
    }
    @IBAction func btnBottomBottom(sender:UIButton) {
        self.displayViewController(.BottomBottom)
    }
    @IBAction func btnTopTop(sender:UIButton) {
        self.displayViewController(.TopTop)
    }
    @IBAction func btnLeftLeft(sender:UIButton) {
        self.displayViewController(.LeftLeft)
    }
    @IBAction func btnLeftRight(sender:UIButton) {
        self.displayViewController(.LeftRight)
    }
    @IBAction func btnRightLeft(sender:UIButton) {
        self.displayViewController(.RightLeft)
    }
    
    @IBAction func popup(sender: AnyObject) {
        self.displayViewController(.TopBottom)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func displayViewController(animationType: SLpopupViewAnimationType) {
        let myPopupViewController:MyPopupViewController = MyPopupViewController(nibName:"MyPopupViewController", bundle: nil)
        myPopupViewController.delegate = self
        self.presentpopupViewController(myPopupViewController, animationType: animationType, completion: { () -> Void in
            
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: MyPopupViewControllerProtocol
    func pressOK(sender: MyPopupViewController) {
        print("press OK", terminator: "\n")
        self.dismissPopupViewController(.Fade)
    }
    func pressCancel(sender: MyPopupViewController) {
        print("press Cancel", terminator: "\n")
        self.dismissPopupViewController(.Fade)
    }
    
}

