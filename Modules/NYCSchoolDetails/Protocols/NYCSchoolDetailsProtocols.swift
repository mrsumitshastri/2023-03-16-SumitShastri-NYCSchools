//
//  NYCSchoolDetailsProtocols.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
protocol NYCSchoolDetailsViewToPresenterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var view: NYCSchoolDetailsPresenterToViewProtocol? { get set }
    var router: NYCSchoolDetailsPresenterToRouterProtocol? { get set }
    var school: NYCSchool? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolResults(dbn: String?)
    func goToMapView(from view: NYCSchoolDetailsPresenterToViewProtocol?, with school: NYCSchool?)
}

protocol NYCSchoolDetailsPresenterToViewProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolDetailsViewToPresenterProtocol? { get set }
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolResultsSuccess(with list: NYCSATResults?)
    func getSchoolResultsFailed(with error: Error?)
    
}

protocol NYCSchoolDetailsPresenterToInteractorProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolDetailsInteractorToPresenterProtocol? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolResults(dbn: String?)
}

protocol NYCSchoolDetailsInteractorToPresenterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var interactor: NYCSchoolDetailsPresenterToInteractorProtocol? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    func getSchoolResultsSuccess(with list: NYCSATResults?)
    func getSchoolResultsFailed(with error: Error?)
}

protocol NYCSchoolDetailsPresenterToRouterProtocol: AnyObject {
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var delegate: NYCSchoolDetailsDelegate? { get set }
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func goToMapView(from view: NYCSchoolDetailsPresenterToViewProtocol?, with school: NYCSchool?)
}


