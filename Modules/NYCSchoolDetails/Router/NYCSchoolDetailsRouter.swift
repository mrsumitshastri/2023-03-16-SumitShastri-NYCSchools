//
//  NYCSchoolDetailsRouter.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import Foundation
import UIKit
import SwiftUI
import MapKit
protocol NYCSchoolDetailsDelegate: class {
    func updateNewSchedule(with info: NSDictionary?)
    func updateNewPlugInReminder(with info: NSDictionary?)
}

class NYCSchoolDetailsRouter: NYCSchoolDetailsPresenterToRouterProtocol {
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var delegate: NYCSchoolDetailsDelegate?
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    func goToMapView(from view: NYCSchoolDetailsPresenterToViewProtocol?, with school: NYCSchool?) {
        //**************************************************
        // MARK: - OPEN SWIFT UI VIEW
        //**************************************************
        if let detailsVC = view as? NYCSchoolDetailsViewController {
            guard let school_name = school?.school_name, let latitude = school?.latitude, let longitude = school?.longitude else {
                return
            }
            guard let dLatitude = Double(latitude) else { return  }
            guard let dLongitude = Double(longitude) else { return  }
            let loc = Location(name: school_name, coordinate: CLLocationCoordinate2D(latitude: dLatitude, longitude: dLongitude))
            let mapView = UIHostingController(rootView: NYCShowLocationMap(coordinate: loc.coordinate, _locations: [loc]))
            detailsVC.navigationController?.pushViewController(mapView, animated: true)
        }
    }
}
