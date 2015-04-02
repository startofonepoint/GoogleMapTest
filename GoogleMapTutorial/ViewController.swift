//
//  ViewController.swift
//  GoogleMapTutorial
//
//  Created by lostin1 on 2015. 3. 17..
//  Copyright (c) 2015년 lostin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.2, zoom: 6.0)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.2)
        marker.title = "Sydney"
        marker.snippet = "Austrailia"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

