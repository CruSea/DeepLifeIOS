//
//  AddEditVC.swift
//  CD-Grocery-Images
//
//  Created by Jason Rybka on 8/16/15.
//  Copyright © 2015 Jason Rybka. All rights reserved.
//

import UIKit
import CoreData

class profile: UIViewController, NSFetchedResultsControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var disc : Disciplelistt? = nil
    
    @IBOutlet weak var discname: UITextField!
    
    @IBOutlet weak var discphone: UITextField!
    
    @IBOutlet weak var discemail: UITextField!
    
    @IBOutlet weak var makeschedule: UIButton!
    
    @IBOutlet weak var completebuild: UIButton!
    @IBOutlet weak var sexlabell: UILabel!
    
    @IBOutlet weak var discsex: UITextField!
    @IBOutlet weak var added: UILabel!
    
    @IBOutlet weak var imageHolder: UIImageView!
    
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        added.layer.cornerRadius = 10.0
        completebuild.layer.cornerRadius = 10.0
        
        
        
        imageHolder.layer.masksToBounds = false
        imageHolder.layer.borderColor = UIColor.orangeColor().CGColor
        imageHolder.layer.cornerRadius = imageHolder.frame.size.width/2
        imageHolder.clipsToBounds = true
        
        
        
        if disc != nil {
            discname.text = disc?.fullname!
            discphone.text = disc?.phonenumber!
            discemail.text = disc?.email!
            sexlabell.text = disc?.sex!
            imageHolder.image = UIImage(data: (disc?.image)!)
        }
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        self.imageHolder.image = image
    }
    
    @IBAction func saveTapped(sender: AnyObject) {
        
        if disc != nil {
            editItem()
        } else {
            
        }
        
        dismissVC()
        
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        
        dismissVC()
        
    }
    
    func dismissVC() {
        
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    
    func editItem() {
        
        disc?.fullname = discname.text
        disc?.phonenumber = discphone.text
        disc?.email = discemail.text
        
        disc!.image = UIImagePNGRepresentation(imageHolder.image!)
        
        do {
            try moc.save()
        } catch {
            return
        }
        
    }
    
}













