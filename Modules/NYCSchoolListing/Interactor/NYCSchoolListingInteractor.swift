//
//  NYCSchoolListingInteractor.swift
//  Sumit Shastri



import Foundation
import Alamofire

class NYCSchoolListingInteractor: NYCSchoolListingPresenterToInteractorProtocol {
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    weak var presenter: NYCSchoolListingInteractorToPresenterProtocol?

    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    func getSchoolList(){
        let apiToContact = NYCNetworkResource.baseURL + "/" + NYCNetworkResource.schoolList
        AF.request(apiToContact).validate().response { data in
            switch data.result {
                case .success:
                if let data = data.data {
                    do {
                        let decoder = JSONDecoder()
                        let schools = try decoder.decode([NYCSchool].self, from: data)
                        self.presenter?.getSchoolListSuccess(with: schools)
                    } catch {
                        self.presenter?.getSchoolListFailed(with: error)
                    }
                } else {
                    let error = NSError(domain: "", code: 401, userInfo: [ NSLocalizedDescriptionKey: "Invalid access token"])
                    self.presenter?.getSchoolListFailed(with: error)
                }
            case .failure(let error):
                self.presenter?.getSchoolListFailed(with: error)
            }
        }
    }
    
}
