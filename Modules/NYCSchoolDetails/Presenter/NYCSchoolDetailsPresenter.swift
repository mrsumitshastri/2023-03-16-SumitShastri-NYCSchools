//
//  NYCSchoolDetailsPresenter.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
import Foundation
class NYCSchoolDetailsPresenter: NYCSchoolDetailsViewToPresenterProtocol {
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var view: NYCSchoolDetailsPresenterToViewProtocol?
    var interactor: NYCSchoolDetailsPresenterToInteractorProtocol?
    var router: NYCSchoolDetailsPresenterToRouterProtocol?
    var school: NYCSchool?


    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolResults(dbn: String?) {
        interactor?.getSchoolResults(dbn: dbn)
    }
    func goToMapView(from view: NYCSchoolDetailsPresenterToViewProtocol?, with school: NYCSchool?) {
        router?.goToMapView(from: view, with: school)
    }
}

extension NYCSchoolDetailsPresenter: NYCSchoolDetailsInteractorToPresenterProtocol {
    func getSchoolResultsSuccess(with list: NYCSATResults?) {
        DispatchQueue.main.async {
            self.view?.getSchoolResultsSuccess(with: list)
        }
    }
    
    func getSchoolResultsFailed(with error: Error?) {
        DispatchQueue.main.async {
            self.view?.getSchoolResultsFailed(with: error)
        }
    }
}
