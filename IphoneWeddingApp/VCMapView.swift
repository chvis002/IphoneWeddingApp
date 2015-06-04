//
//  VCMapView.swift
//  IphoneWeddingApp
//
//  Created by Christopher on 04/06/15.
//  Copyright (c) 2015 ChristopherFrida. All rights reserved.
//

import Foundation

import MapKit

extension MapViewController: MKMapViewDelegate {
    
    // 1
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if let annotation = annotation as? Artwork {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                as? MKPinAnnotationView { // 2
                    dequeuedView.annotation = annotation
                    view = dequeuedView
            } else {
                // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
            
                let image = UIImage(named: "Directions-icon.jpg") as UIImage?
                let button = UIButton.buttonWithType(.DetailDisclosure) as! UIButton
                button.setImage(image, forState: .Normal)
                
                view.rightCalloutAccessoryView = button as! UIView
                
                // view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
    func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl!) {
        let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMapsWithLaunchOptions(launchOptions)
    }
}