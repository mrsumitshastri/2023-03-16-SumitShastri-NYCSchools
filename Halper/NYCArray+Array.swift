//
//  NYCArray+Array.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import Foundation

extension Array where Element == NYCSchool {
    
    mutating func sort() {
        let sorted = self.sorted { lhs, rhs in
            if let lhs = lhs.school_name?.lowercased(), let rhs = rhs.school_name?.lowercased() {
                return lhs.caseInsensitiveCompare(rhs) == ComparisonResult.orderedAscending
            } else {
                return false
            }
        }
        self = sorted
    }
}
