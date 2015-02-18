//
//  findUs.swift
//  Henriksen Survey
//
//  Created by Dominic Vitucci on 1/10/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit
import MapKit

class findUs: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var location1 = CLLocationCoordinate2D(
            latitude: 42.052146,
            longitude: -87.910130
        )
        
        var span1 = MKCoordinateSpanMake(0.01, 0.01)
        var region1 = MKCoordinateRegion(center: location1, span: span1)
        
        map.setRegion(region1, animated: true)
        
        var annotation1 = MKPointAnnotation()
        annotation1.setCoordinate(location1)
        annotation1.title = "John Henriksen Professional Land Surveyor"
        annotation1.subtitle = "576 East Northwest Highway, Des Plaines, IL"
        
        self.map.addAnnotation(annotation1)

    }

}
