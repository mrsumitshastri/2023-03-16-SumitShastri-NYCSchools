//
//  NYCSchoolListingCell.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import UIKit



class NYCSchoolListingCell: UITableViewCell {
    
    //**************************************************
    // MARK: - Constants
    //**************************************************

    
    //**************************************************
    // MARK: - Life Cycle Methods
    //**************************************************

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //**************************************************
    // MARK: - IBOutlet
    //**************************************************
    
    @IBOutlet weak var lblSchoolName: UILabel!
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    
    func configureCell(school: NYCSchool?) {
        guard let school = school else { return }
        self.lblSchoolName.text = school.school_name
    }
}
