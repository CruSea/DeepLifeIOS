//
//  PopUpViewController.swift
//  PopUpDemo
//
//  Created by 洪亞偉 on 15/5/1.
//  Copyright (c) 2015年 Raincle. All rights reserved.
//

import UIKit
import iAd
import CoreData
class PopUpViewController: UIViewController,UITextViewDelegate,  UITextFieldDelegate,UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var popUp: UIView!
    
    @IBOutlet weak var detail: UITextView!
    
    @IBOutlet weak var titl: UITextField!
    @IBOutlet weak var discname: UIPickerView!
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    // var pickerDataSource = ["Amanuel", "Mule", "Sami", "Yared"];
    
    var data = [Disciplelistt]()
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .Custom
        transitioningDelegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        discname.dataSource = self
        discname.delegate = self
        fetchData()
        discname.reloadAllComponents()
        
        self.discname.dataSource = self;
        self.discname.delegate = self;
        popUp.layer.cornerRadius = 10
        
        titl.returnKeyType = UIReturnKeyType.Done
        detail.returnKeyType = UIReturnKeyType.Done
        titl.delegate = self
        detail.delegate = self
        
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("close:"))
        gestureRecognizer.cancelsTouchesInView = false
        gestureRecognizer.delegate = self
        view.addGestureRecognizer(gestureRecognizer)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func fetchData(){
        
        let fetchRequest = NSFetchRequest(entityName: "Disciples")
        if let fetchResults = (try? managedObjectContext.executeFetchRequest(fetchRequest)) as? [Disciplelistt] {
            data = fetchResults
            
        }}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        self.fetchData()
        print(data.count)
        return data.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let oneData = data[row]
        
        
        return (oneData.fullname)
    }
    
    
    @IBAction func close(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func showAD(sender: AnyObject) {
        
    }
    
    
    
    
}

extension PopUpViewController: UIViewControllerTransitioningDelegate {
    
    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController? {
        
        return DimmingPresentationController(presentedViewController: presented, presentingViewController: presenting)
        
    }
}

extension PopUpViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        return (touch.view === view)
    }
}