//
//  ViewController.swift
//  Kueck_Lab5_Mapbox_Customization
//
//  Created by mjk3ll3y on 3/11/18.
//  Copyright © 2018 janelle6. All rights reserved.
//

import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Set the map’s center coordinate and zoom level.
        mapView.setCenter(CLLocationCoordinate2D(latitude: 47.3293, longitude: -122.5801), zoomLevel: 12, animated: false)
        view.addSubview(mapView)
        
        // Set the delegate property of our map view to `self` after instantiating it.
        mapView.delegate = self
        
        // Declare the marker `hello` and set its coordinates, title, and subtitle.
        let hello = MGLPointAnnotation()
        hello.coordinate = CLLocationCoordinate2D(latitude: 47.315976, longitude: -122.577177)
        hello.title = "Janelle Made this!"
        hello.subtitle = "The house where Janelle grew up!"
        
        let netShed = MGLPointAnnotation()
        netShed.coordinate = CLLocationCoordinate2D (latitude: 47.332332, longitude: -122.583282)
        netShed.title = "Net Shed 9"
        netShed.subtitle = "Janelle's Favorite Restaurant"
        // Add marker `hello` to the map.
        mapView.addAnnotation(hello)
        mapView.addAnnotation(netShed)
    }
    
    // Use the default marker. See also: our view annotation or custom marker examples.
    func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
        return nil
    }
    
    // Allow callout view to appear when an annotation is tapped.
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
}

