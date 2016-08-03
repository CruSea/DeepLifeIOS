//
//  AddEditVC.swift
//  CD-Grocery-Images
//
//  Created by Jason Rybka on 8/16/15.
//  Copyright © 2015 Jason Rybka. All rights reserved.
//

import UIKit
import CoreData

class Discadd: UIViewController, NSFetchedResultsControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var disc : Disciplelistt? = nil
    var sexstring :String = ""
    
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var sexseg: UISegmentedControl!
   
    @IBAction func sexoption(sender: UISegmentedControl) {
   
        if(sender.selectedSegmentIndex == 0)
        {
           sexstring = "Male";
        }
            
        else if(sender.selectedSegmentIndex == 1)
        {
            sexstring = "Female";
        }
    }
    
    @IBOutlet weak var sexlabel: UILabel!
  

    @IBAction func addImage(sender: AnyObject) {
    
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        pickerController.allowsEditing = true
        
        self.presentViewController(pickerController, animated: true, completion: nil)
    }
    @IBAction func addImageFromCamera(sender: AnyObject) {
    
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = UIImagePickerControllerSourceType.Camera
        pickerController.allowsEditing = true
        
        self.presentViewController(pickerController, animated: true, completion: nil)
    }
    @IBOutlet weak var discname: UITextField!
    
    //@IBOutlet weak var discountry: UITextField!
    @IBOutlet weak var discemail: UITextField!
    // @IBOutlet weak var discname: UITextField!
   // @IBOutlet weak var discountry: UITextField!
    //@IBOutlet weak var discemail: UITextField!
      
    @IBOutlet weak var imageHolder: UIImageView!
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if disc != nil {
            discname.text = disc?.fullname
            phone.text = disc?.phonenumber
            sexstring = (disc?.sex!)!
            discemail.text = disc?.email
            
            imageHolder.image = UIImage(data: (disc?.image)!)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        self.imageHolder.image = image
    }
    
    @IBAction func saveTapped(sender: AnyObject) {
        
        if disc != nil {
            editItem()
        } else {
            createNewItem()
        }
        
        dismissVC()
        
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        
        dismissVC()
        
    }
    
    func dismissVC() {
        
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    func createNewItem() {
        
        let entityDescription = NSEntityDescription.entityForName("Disciples", inManagedObjectContext: moc)
        
        let item = Disciplelistt(entity: entityDescription!, insertIntoManagedObjectContext: moc)
        
        item.fullname = discname.text
        item.phonenumber = phone.text
        item.email = discemail.text
        item.sex = sexstring
        item.image = UIImagePNGRepresentation(imageHolder.image!)
        
        do {
            try moc.save()
        } catch {
            return
        }
        
    }
    
    func editItem() {
        
        disc?.fullname = discname.text
        disc?.phonenumber = phone.text
        disc?.email = discemail.text
   
        disc!.image = UIImagePNGRepresentation(imageHolder.image!)
        
        do {
            try moc.save()
        } catch {
            return
        }
        
    }
    
}













