//
//  NYCSchoolDetailsViewController.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
import ProgressHUD

enum HiddenCellType: String {
    case latitude
    case longitude
    
    static var allValues: [HiddenCellType] = [.latitude, .longitude]
}

class NYCSchoolDetailsViewController: UITableViewController {
    
    //**************************************************
    // MARK: - Enum Constants
    //**************************************************
    enum DisplayCellType: String {
        case location
        case school_email
        case phone_number
    }
    
    enum Constants {
        static let numberOfRowsInSetTimeSection = 1
        static let tabelHeaderHeight: CGFloat = 38.0
        
    }
    
    //**************************************************
    // MARK: - IBOutlet
    //**************************************************
    
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolDetailsViewToPresenterProtocol?
    
    var rows: [String]?
    
    var resultsData: NYCSATResults?
    
    //**************************************************
    // MARK: - ViewController Life-Cycle
    //**************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rows = self.presenter?.school?.getAllKeys(hide: HiddenCellType.allValues)
        self.title = self.presenter?.school?.school_name
    }
    
    
    //**************************************************
    // MARK: - Private Methods
    //**************************************************
    
}

//**************************************************
// MARK: - Extensions
//**************************************************

extension NYCSchoolDetailsViewController: NYCSchoolDetailsPresenterToViewProtocol {
    func getSchoolResultsSuccess(with list: NYCSATResults?) {
        ProgressHUD.remove()
        self.resultsData = list
        self.tableView.reloadData()
    }
    
    func getSchoolResultsFailed(with error: Error?) {
        print(error)
    }
}

extension NYCSchoolDetailsViewController {
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Constants.tabelHeaderHeight
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cellType = self.rows?[indexPath.row] {
            switch cellType {
            case DisplayCellType.location.rawValue:
                presenter?.goToMapView(from: self, with: self.presenter?.school)
            default:
                break
            }
        }
        
    }
}

//**************************************************
// MARK: - Extension
//**************************************************

extension NYCSchoolDetailsViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rows?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: NYCSchoolDetailsCell.self)
        if let cellType = self.rows?[indexPath.row] {
            let value = self.presenter?.school?[cellType] as? String
            cell.configureCell(title: cellType, details: value)
            switch cellType {
            case DisplayCellType.location.rawValue:
                cell.accessoryType = .disclosureIndicator
                cell.lblDetails.textColor = .blue
            default:
                cell.accessoryType = .none
            }
        }
        return cell
    }
    
    
    
}


