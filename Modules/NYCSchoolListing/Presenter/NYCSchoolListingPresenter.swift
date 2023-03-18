//
//  NYCSchoolListingPresenter.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
import Foundation
class NYCSchoolListingPresenter: NYCSchoolListingViewToPresenterProtocol {

    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var view: NYCSchoolListingPresenterToViewProtocol?
    var interactor: NYCSchoolListingPresenterToInteractorProtocol?
    var router: NYCSchoolListingPresenterToRouterProtocol?

    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolList() {
        interactor?.getSchoolList()
    }
    
    func goToSchoolDetailsScreen(from view: NYCSchoolListingPresenterToViewProtocol?, with school: NYCSchool?) {
        router?.goToSchoolDetailsScreen(from: view, with: school)
    }
    
}

extension NYCSchoolListingPresenter: NYCSchoolListingInteractorToPresenterProtocol {
    func getSchoolListSuccess(with list: [NYCSchool]?) {
        DispatchQueue.main.async {
            self.view?.getSchoolListSuccess(with: list)
        }
    }
    
    func getSchoolListFailed(with error: Error?) {
        DispatchQueue.main.async { [weak self] in
            self?.view?.getSchoolListFailed(with: error)
        }
    }
}
