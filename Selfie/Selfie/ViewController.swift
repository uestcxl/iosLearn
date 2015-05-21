//
//  ViewController.swift
//  Selfie
//
//  Created by 徐磊 on 15/5/21.
//  Copyright (c) 2015年 徐磊. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func shareTapped(sender: AnyObject) {
        var social = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        social.addImage(myImageView.image)
        
        self.presentViewController(social, animated: true, completion: nil)
    }
    
    @IBAction func selfieTapped(sender: AnyObject) {
        var imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        if UIImagePickerController.isSourceTypeAvailable(.Camera){
            imagePicker.sourceType = .Camera
            if(UIImagePickerController.isCameraDeviceAvailable(.Front)){
                imagePicker.cameraDevice = .Front
            }else{
                imagePicker.cameraDevice = .Rear
            }
        }else{
            imagePicker.sourceType = .PhotoLibrary
        }
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        myImageView.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

