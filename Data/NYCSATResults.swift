//
//  NYCSATResults.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import Foundation
public struct NYCSATResults: Codable {
    public var dbn: String?
    public var school_name: String?
    public var num_of_sat_test_takers: String?
    public var sat_critical_reading_avg_score: String?
    public var sat_math_avg_score: String?
    public var sat_writing_avg_score: String?
}
