//
//  NYCSchoolDetailsBuilder.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import Foundation
import UIKit

class NYCSchoolDetailsBuilder {
    
    //**************************************************
    // MARK: - Constants
    //**************************************************
    
    enum NYCSchoolDetailsBuilderConstants {
        static let storyBoard = "NYCSchoolDetails"
        static let viewController = "NYCSchoolDetailsViewController"
    }
    
    //**************************************************
    // MARK: - Public Methods
    //**************************************************
    
    
    public class func createNYCSchoolDetailsModule(school: NYCSchool?) -> NYCSchoolDetailsViewController? {
        
        let detailsVC = UIStoryboard(name: NYCSchoolDetailsBuilderConstants.storyBoard, bundle: nil).instantiateViewController(withIdentifier: NYCSchoolDetailsBuilderConstants.viewController) as? NYCSchoolDetailsViewController
        if let view = detailsVC {
            let presenter: NYCSchoolDetailsViewToPresenterProtocol & NYCSchoolDetailsInteractorToPresenterProtocol = NYCSchoolDetailsPresenter()
            let interactor: NYCSchoolDetailsPresenterToInteractorProtocol = NYCSchoolDetailsInteractor()
            let router: NYCSchoolDetailsPresenterToRouterProtocol = NYCSchoolDetailsRouter()
            
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            interactor.presenter = presenter
            presenter.router = router
            presenter.school = school
            return detailsVC
        }
        return nil
    }
    
}
