//
//  MapViewController.swift
//  helloworld
//
//  Created by 徐磊 on 15/5/19.
//  Copyright (c) 2015年 徐磊. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController , MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let italy = MKPointAnnotation()
        italy.coordinate = CLLocationCoordinate2DMake(41.8947400, 12.4839000)
        italy.title = "Rome , Italy"
        
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2DMake(51.5085300, -0.1257400)
        england.title = "Landon , England"
        
        let norway = MKPointAnnotation()
        norway.coordinate = CLLocationCoordinate2DMake(59.914225, 10.75256)
        norway.title = "Oslo , Norway"
        
        let spain = MKPointAnnotation()
        spain.coordinate = CLLocationCoordinate2DMake(40.41694, -3.70081)
        spain.title = "Madrid, Spain"
        
        let locations = [italy , england , norway , spain]
        mapView.addAnnotations(locations)
        
        var myRegion = MKCoordinateRegionMakeWithDistance(italy.coordinate, 5500000,5500000)
        mapView.setRegion(myRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        var pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier" )
        pin.canShowCallout = true
        
        return pin
    }

}
