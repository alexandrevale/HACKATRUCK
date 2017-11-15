//
//  ViewController.swift
//  Marco Polo
//
//  Created by Student on 14/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController{
    @IBOutlet weak var mapView: MKMapView!

    let locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        setupLocationManager()
        addGesture()
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //Define o nível de precisão da localização
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func zoomIn() {
        // definindo os valores do nível de zoom que será aplicado
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        // definindo a região do mapa no qual o zoom será aplicado, considerando a localização obtida
        let region: MKCoordinateRegion = MKCoordinateRegionMake(userLocation.coordinate, span)
        
        //mapView.setRegion(region, animated: true)
        let adjusted = mapView.regionThatFits(region)
        mapView.setRegion(adjusted, animated: true)
    }
    
    func addGesture() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector (addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 2.0
        mapView.addGestureRecognizer(longPress)
    }
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer) {
        //print("Passei por aqui!")
        let touchPoint = gestureRecognizer.location(in: mapView)
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Quero visitar!"
        newAnnotation.subtitle = "\(newCoordinate.latitude), \(newCoordinate.longitude)"
        mapView.addAnnotation(newAnnotation)
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        /*
         este método faz parte do delegate do CLLocation e é disparado automaticamente; sua estrutura deve ser mantida.
         ele é responsável por atualizar a localização
         */
        userLocation = locations.last!
        //print("Localização atual: ", userLocation.coordinate)
        zoomIn()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Erro ao obter a localização do usuário: ", error)
    }
}
