//
//  NYCSchoolListingViewController.swift
//  Sumit Shastri

/*
 * Licensed Materials - Sumit Shastri
 * Copyright (C) 2018 Sumit Shastri  All Rights Reserved.
 */

import UIKit
import ProgressHUD

class NYCSchoolListingViewController: UITableViewController {
    
    //**************************************************
    // MARK: - Enum Constants
    //**************************************************
    
    enum Constants {
        static let numberOfRowsInSetTimeSection = 1
        static let pageTitle = "nyc_school_list".localized
        static let tabelHeaderHeight: CGFloat = 38.0
        
    }
    
    //**************************************************
    // MARK: - IBOutlet
    //**************************************************
    
    
    //**************************************************
    // MARK: - Properties
    //**************************************************
    
    var presenter: NYCSchoolListingViewToPresenterProtocol?
    
    var schools: [NYCSchool] = []
    
    var filteredSchools: [NYCSchool] = []
    
    var searchController = UISearchController(searchResultsController: nil)
    
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    //**************************************************
    // MARK: - ViewController Life-Cycle
    //**************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Constants.pageTitle
        self.setupSearchBar()
        ProgressHUD.show("Loading Schools...")
        self.presenter?.getSchoolList()
    }
    
    
    //**************************************************
    // MARK: - Private Methods
    //**************************************************
    
}

//**************************************************
// MARK: - Extensions
//**************************************************

extension NYCSchoolListingViewController: NYCSchoolListingPresenterToViewProtocol {
    func getSchoolListSuccess(with list: [NYCSchool]?) {
        self.schools = list ?? []
        self.schools.sort()
        self.filteredSchools = self.schools
        ProgressHUD.remove()
        self.tableView.reloadData()
    }
    
    func getSchoolListFailed(with error: Error?) {
        //TODO: show proper error message
    }
    
    
}

extension NYCSchoolListingViewController {
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Constants.tabelHeaderHeight
    }
    
    override  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let school = self.schools[indexPath.row]
        presenter?.goToSchoolDetailsScreen(from: self, with: school)
    }
    
}

//**************************************************
// MARK: - Extension
//**************************************************

extension NYCSchoolListingViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filteredSchools.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: NYCSchoolListingCell.self)
        let school = self.schools[indexPath.row]
        cell.configureCell(school: school)
        return cell
    }
    
    
    
}


extension NYCSchoolListingViewController: UISearchResultsUpdating, UISearchBarDelegate {
    
    func setupSearchBar() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "School Name"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        if let text = searchBar.text {
            filterContentForSearchText(text)
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
        self.filteredSchools = self.schools
        tableView.reloadData()
    }
    
    func filterContentForSearchText(_ searchText: String) {
        self.filteredSchools = schools.filter { (school: NYCSchool) -> Bool in
            return school.school_name?.lowercased().contains(searchText.lowercased()) ?? false
        }
        self.filteredSchools.sort()
        tableView.reloadData()
    }
}
