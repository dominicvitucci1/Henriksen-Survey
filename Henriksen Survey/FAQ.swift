//
//  FAQ.swift
//  Henriksen Survey
//
//  Created by Dominic Vitucci on 1/12/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit

class FAQ: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    
    var urlPath = "http://www.henriksensurvey.com/index_files/Page611.htm"
    
    
    
    override func loadView() {
        
        super.loadView()
        
        
        
        
        
        loadURL()
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Screen Tracking for Google Analytcis
        var tracker:GAITracker = GAI.sharedInstance().defaultTracker as GAITracker
        tracker.set(kGAIScreenName, value:"FAQ")
        tracker.send(GAIDictionaryBuilder.createScreenView().build() as [NSObject : AnyObject])
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    func loadURL()
        
    {
        
        let requestURL = NSURL(string: urlPath)
        
        let request = NSURLRequest(URL: requestURL!)
        
        webView.loadRequest(request)
        
        
        
    }
    
}
