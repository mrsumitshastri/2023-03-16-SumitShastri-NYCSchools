//
//  NYCSchoolDetailsInteractor.swift
//  Sumit Shastri


import Foundation
import Alamofire

class NYCSchoolDetailsInteractor: NYCSchoolDetailsPresenterToInteractorProtocol {
    
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var presenter: NYCSchoolDetailsInteractorToPresenterProtocol?

    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolResults(dbn: String?){

        if let dbn = dbn {
            let apiToContact = NYCNetworkResource.baseURL + "/" + NYCNetworkResource.schoolSATResults + "?dbn=\(dbn)"
            AF.request(apiToContact).validate().response { data in
                switch data.result {
                    case .success:
                    if let data = data.data {
                        do {
                            let decoder = JSONDecoder()
                            let results = try decoder.decode([NYCSATResults].self, from: data)
                            self.presenter?.getSchoolResultsSuccess(with: results.first)
                        } catch {
                            self.presenter?.getSchoolResultsFailed(with: error)
                        }
                    } else {
                        let error = NSError(domain: "", code: 401, userInfo: [ NSLocalizedDescriptionKey: "Invalid access token"])
                        self.presenter?.getSchoolResultsFailed(with: error)
                    }
                case .failure(let error):
                    self.presenter?.getSchoolResultsFailed(with: error)
                }
            }
        } else {
            let error = NSError(domain: "", code: 401, userInfo: [ NSLocalizedDescriptionKey: "dbn not found "])
            self.presenter?.getSchoolResultsFailed(with: error)
            self.presenter?.getSchoolResultsFailed(with: error)
        }
        
        
    }
    
    
    //**************************************************
    // MARK: - Private Methods
    //**************************************************
    
}
