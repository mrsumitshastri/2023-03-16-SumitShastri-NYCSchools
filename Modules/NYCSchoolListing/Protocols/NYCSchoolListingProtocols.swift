//
//  NYCSchoolListingProtocols.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
protocol NYCSchoolListingViewToPresenterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var view: NYCSchoolListingPresenterToViewProtocol? { get set }
    var router: NYCSchoolListingPresenterToRouterProtocol? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolList()
    func goToSchoolDetailsScreen(from view: NYCSchoolListingPresenterToViewProtocol?, with school: NYCSchool?)
}

protocol NYCSchoolListingPresenterToViewProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolListingViewToPresenterProtocol? { get set }
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolListSuccess(with list: [NYCSchool]?)
    func getSchoolListFailed(with error: Error?)
    
}

protocol NYCSchoolListingPresenterToInteractorProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolListingInteractorToPresenterProtocol? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolList()
}

protocol NYCSchoolListingInteractorToPresenterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var interactor: NYCSchoolListingPresenterToInteractorProtocol? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    func getSchoolListSuccess(with list: [NYCSchool]?)
    func getSchoolListFailed(with error: Error?)
}

protocol NYCSchoolListingPresenterToRouterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var delegate: NYCSchoolListingDelegate? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func goToSchoolDetailsScreen(from view: NYCSchoolListingPresenterToViewProtocol?, with school: NYCSchool?)
}


