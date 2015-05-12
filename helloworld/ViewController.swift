//
//  ViewController.swift
//  helloworld
//
//  Created by 徐磊 on 15/5/10.
//  Copyright (c) 2015年 徐磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func calButton(sender: AnyObject) {
        var userInput = textField.text as NSString
        var totalBill : Float = userInput.floatValue
        var index : Int = segmentControl.selectedSegmentIndex
        
        var rate : [Float] = [0.15 ,0.2 ,0.25]
        
        var tipValue : Float = totalBill * rate[index]
        
        tipLabel.text = "\(tipValue)"
    }
    
    @IBAction func goTagged(sender: AnyObject) {
        helloText.text = "Hello world"
    }
    @IBOutlet weak var helloText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

