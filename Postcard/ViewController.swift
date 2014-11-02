//
//  ViewController.swift
//  Postcard
//
//  Created by Lee on 11/1/14.
//  Copyright (c) 2014 Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.text=enterNameTextField.text
        messageLabel.hidden=false
        messageLabel.text=messageLabel.text! + enterMessageTextField.text
        enterMessageTextField.text=""
        sendMailButton.backgroundColor=UIColor.blueColor()
        sendMailButton.tintColor=UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
    
    
}

