//
//  emailComposer.swift
//  Henriksen Survey
//
//  Created by Dominic Vitucci on 1/10/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import Foundation
import MessageUI

class EmailComposer: NSObject, MFMailComposeViewControllerDelegate
{

    
           func canSendMail() -> Bool
        {
            return MFMailComposeViewController.canSendMail()
        }
        
        func configuredMailComposeViewController() -> MFMailComposeViewController
        {
            let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            
            mailComposerVC.setToRecipients(["survey@henriksensurvey.com"])
            mailComposerVC.setSubject("")
            mailComposerVC.setMessageBody("", isHTML: false)
            
            return mailComposerVC
        }
        
        // MARK: MFMailComposeViewControllerDelegate Method
        func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!)
        {
            controller.dismissViewControllerAnimated(true, completion: nil)
        }
}
