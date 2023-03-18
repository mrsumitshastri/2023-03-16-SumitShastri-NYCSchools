//
//  NYCSchoolListingBuilder.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import Foundation
import UIKit

class NYCSchoolListingBuilder {
    
    //**************************************************
    // MARK: - Constants
    //**************************************************
    
    enum NYCSchoolListingBuilderConstants {
        static let storyBoard = "Main"
        static let viewController = "NYCSchoolListingViewController"
    }
    
    //**************************************************
    // MARK: - Public Methods
    //**************************************************
    
    
    public class func createNYCSchoolListingModule() -> UINavigationController? {
        
        let listingNavVC = UIStoryboard(name: NYCSchoolListingBuilderConstants.storyBoard, bundle: nil).instantiateViewController(withIdentifier: NYCSchoolListingBuilderConstants.viewController) as? UINavigationController
        let listingVC = listingNavVC?.topViewController as? NYCSchoolListingViewController
        if let view = listingVC {
            let presenter: NYCSchoolListingViewToPresenterProtocol & NYCSchoolListingInteractorToPresenterProtocol = NYCSchoolListingPresenter()
            let interactor: NYCSchoolListingPresenterToInteractorProtocol = NYCSchoolListingInteractor()
            let router: NYCSchoolListingPresenterToRouterProtocol = NYCSchoolListingRouter()
            
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            interactor.presenter = presenter
            presenter.router = router

            return listingNavVC
        }
        return nil
    }
    
}
