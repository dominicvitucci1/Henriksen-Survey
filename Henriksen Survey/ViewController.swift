//
//  ViewController.swift
//  Henriksen Survey
//
//  Created by Dominic Vitucci on 1/8/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
               
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    let emailComposer = EmailComposer()
    
    @IBAction func sendEmailButtonTapped(sender: AnyObject)
    {
        let configuredMailComposeViewController = emailComposer.configuredMailComposeViewController()
        if emailComposer.canSendMail()
        {
            presentViewController(configuredMailComposeViewController, animated: true, completion: nil)
        }
        else
            
        {
            showSendMailErrorAlert()
        }
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }

    
    
    
    
    @IBAction func callNumber(sender: UIButton)
    {
        // Code for UIAlertView (ios7)
        
        var callUsAlert: UIAlertView = UIAlertView()
        
        callUsAlert.delegate = self
        
        callUsAlert.title = "Would you like to call our office?"
        callUsAlert.message = ""
        callUsAlert.addButtonWithTitle("Cancel")
        callUsAlert.addButtonWithTitle("Call")
        
        callUsAlert.show()
        
    }
    
    // Code for UIAlertView (iOS 7)
    func alertView(View: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        
        switch buttonIndex {
            
        case 1:
            self.phoneCall()
            NSLog("calling")
            
        default:
            println("alertView \(buttonIndex) clicked")
            
            
        }
        
        
    }
    
    func phoneCall()
    {
        let phone = "tel://8477950301";
        let url:NSURL = NSURL(string:phone)!;
        UIApplication.sharedApplication().openURL(url);
    }

    


}

