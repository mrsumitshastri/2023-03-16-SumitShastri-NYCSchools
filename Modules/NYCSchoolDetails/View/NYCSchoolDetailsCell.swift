//
//  NYCSchoolDetailsCell.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import Foundation
import UIKit

class NYCSchoolDetailsCell: UITableViewCell {
    
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
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDetails: UILabel!
    
    //**************************************************
    // MARK: - Methods
    //**************************************************
    
    
    func configureCell(title: String?, details: String?) {
        guard let title = title, let details = details else { return }
        let replaced = title.replacingOccurrences(of: "_", with: " ")
        self.lblTitle.text = replaced.capitalized + ":"
        self.lblDetails.text = details
    }
}
