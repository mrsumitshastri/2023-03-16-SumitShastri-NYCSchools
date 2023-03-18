//
//  NYCSchoolListingRouter.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import Foundation
import UIKit

protocol NYCSchoolListingDelegate: AnyObject {
    func updateNewSchedule(with info: NSDictionary?)
    func updateNewPlugInReminder(with info: NSDictionary?)
}

class NYCSchoolListingRouter: NYCSchoolListingPresenterToRouterProtocol {
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var delegate: NYCSchoolListingDelegate?
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    func goToSchoolDetailsScreen(from view: NYCSchoolListingPresenterToViewProtocol?, with school: NYCSchool?) {
        if let listVC = view as? NYCSchoolListingViewController, let detailScreen = NYCSchoolDetailsBuilder.createNYCSchoolDetailsModule(school: school) {
                        listVC.navigationController?.pushViewController(detailScreen, animated: true)
                    }
    }
}
