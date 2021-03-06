//
//  MapViewController.swift
//  IphoneWeddingApp
//
//  Created by Christopher on 03/06/15.
//  Copyright (c) 2015 ChristopherFrida. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    let initialLocation = CLLocation(latitude: 58.369521, longitude: 15.724973)
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        centerMapOnLocation(initialLocation)
    
        mapView.delegate = self
        /*
        let annotationChurch = MKPointAnnotation()
        annotationChurch.coordinate = CLLocationCoordinate2DMake(58.369521, 15.724973);
        annotationChurch.title = "Landeryds kyrka"
        annotationChurch.subtitle = "Här ska vi gifta oss 14:30"
        mapView.addAnnotation(annotationChurch)
        
        let annotationParty = MKPointAnnotation()
        annotationParty.coordinate = CLLocationCoordinate2DMake(58.378309, 15.715126)
        annotationParty.title = "Landeryds hembygdsgård"
        annotationParty.subtitle = "Här är festen senare!"
        mapView.addAnnotation(annotationParty)
        
        */
        
        
            let annotationParty = Artwork(title: "Landeryds hembygdsgård", locationName: "Här är festen senare!",
              discipline: "discipline", coordinate: CLLocationCoordinate2D(latitude: 58.378309,
                longitude: 15.715126))
            mapView.addAnnotation(annotationParty)
        
        let annotationChurch = Artwork(title: "Landeryds kyrka", locationName: "Här ska vi gifta oss 14:30",
            discipline: "discipline", coordinate: CLLocationCoordinate2D(latitude: 58.369521,
                longitude: 15.724973))
        
        mapView.addAnnotation(annotationChurch)
        mapView.selectAnnotation(annotationChurch, animated: true) // select annotation by default

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
