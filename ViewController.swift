//
//  ViewController.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri BCIT M1 on 16/03/23.
//

import UIKit
import Alamofire

public struct SATResults: Codable {
    public var dbn: String?
    public var school_name: String?
    public var num_of_sat_test_takers: String?
    public var sat_critical_reading_avg_score: String?
    public var sat_math_avg_score: String?
    public var sat_writing_avg_score: String?
}

public struct NYCSchool: Codable {
    public var dbn: String?
    public var school_name: String?
    public var boro: String?
    public var overview_paragraph: String?
    public var school_10th_seats: String?
    
    public var academicopportunities1: String?
    public var academicopportunities2: String?
    public var academicopportunities3: String?
    public var academicopportunities4: String?
    public var academicopportunities5: String?
    
    public var ell_programs: String?
    public var language_classes: String?
    public var advancedplacement_courses: String?
    public var diplomaendorsements: String?
    public var neighborhood: String?
    public var shared_space: String?
    public var campus_name: String?
    public var building_code: String?
    public var location: String?
    public var phone_number: String?
    public var fax_number: String?
    public var school_email: String?
    public var website: String?
    public var subway: String?
    public var bus: String?
    
    public var grades2018: String?
    public var finalgrades: String?
    public var total_students: String?
    public var start_time: String?
    public var end_time: String?
    public var addtl_info1: String?
    public var extracurricular_activities: String?
    public var psal_sports_boys: String?
    public var psal_sports_girls: String?
    public var psal_sports_coed: String?
    public var school_sports: String?
    public var graduation_rate: String?
    public var attendance_rate: String?
    public var pct_stu_enough_variety: String?
    public var college_career_rate: String?
    public var pct_stu_safe: String?
    public var girls: String?
    public var boys: String?
    public var pbat: String?
    public var international: String?
    public var specialized: String?
    public var transfer: String?
    public var ptech: String?
    public var earlycollege: String?
    public var geoeligibility: String?
    public var school_accessibility_description: String?

    public var prgdesc1: String?
    public var prgdesc2: String?
    public var prgdesc3: String?
    public var prgdesc4: String?
    public var prgdesc5: String?
    public var prgdesc6: String?
    public var prgdesc7: String?
    public var prgdesc8: String?
    public var prgdesc9: String?
    public var prgdesc10: String?

    public var directions1: String?
    public var directions2: String?
    public var directions3: String?
    public var directions4: String?
    public var directions5: String?
    public var directions6: String?
    public var directions7: String?
    public var directions8: String?
    public var directions9: String?
    public var directions10: String?

    public var requirement1_1: String?
    public var requirement1_2: String?
    public var requirement1_3: String?
    public var requirement1_4: String?
    public var requirement1_5: String?
    public var requirement1_6: String?
    public var requirement1_7: String?
    public var requirement1_8: String?
    public var requirement1_9: String?
    public var requirement1_10: String?
    public var requirement2_1: String?
    public var requirement2_2: String?
    public var requirement2_3: String?
    public var requirement2_4: String?
    public var requirement2_5: String?
    public var requirement2_6: String?
    public var requirement2_7: String?
    public var requirement2_8: String?
    public var requirement2_9: String?
    public var requirement2_10: String?
    public var requirement3_1: String?
    public var requirement3_2: String?
    public var requirement3_3: String?
    public var requirement3_4: String?
    public var requirement3_5: String?
    public var requirement3_6: String?
    public var requirement3_7: String?
    public var requirement3_8: String?
    public var requirement3_9: String?
    public var requirement3_10: String?
    public var requirement4_1: String?
    public var requirement4_2: String?
    public var requirement4_3: String?
    public var requirement4_4: String?
    public var requirement4_5: String?
    public var requirement4_6: String?
    public var requirement4_7: String?
    public var requirement4_8: String?
    public var requirement4_9: String?
    public var requirement4_10: String?
    public var requirement5_1: String?
    public var requirement5_2: String?
    public var requirement5_3: String?
    public var requirement5_4: String?
    public var requirement5_5: String?
    public var requirement5_6: String?
    public var requirement5_7: String?
    public var requirement5_8: String?
    public var requirement5_9: String?
    public var requirement5_10: String?
    public var requirement6_1: String?
    public var requirement6_2: String?
    public var requirement6_3: String?
    public var requirement6_4: String?
    public var requirement6_5: String?
    public var requirement6_6: String?
    public var requirement6_7: String?
    public var requirement6_8: String?
    public var requirement6_9: String?
    public var requirement6_10: String?
    public var requirement7_1: String?
    public var requirement7_2: String?
    public var requirement7_3: String?
    public var requirement7_4: String?
    public var requirement7_5: String?
    public var requirement7_6: String?
    public var requirement7_7: String?
    public var requirement7_8: String?
    public var requirement7_9: String?
    public var requirement7_10: String?
    public var requirement8_1: String?
    public var requirement8_2: String?
    public var requirement8_3: String?
    public var requirement8_4: String?
    public var requirement8_5: String?
    public var requirement8_6: String?
    public var requirement8_7: String?
    public var requirement8_8: String?
    public var requirement8_9: String?
    public var requirement8_10: String?
    public var requirement9_1: String?
    public var requirement9_2: String?
    public var requirement9_3: String?
    public var requirement9_4: String?
    public var requirement9_5: String?
    public var requirement9_6: String?
    public var requirement9_7: String?
    public var requirement9_8: String?
    public var requirement9_9: String?
    public var requirement9_10: String?
    public var requirement10_1: String?
    public var requirement10_2: String?
    public var requirement10_3: String?
    public var requirement10_4: String?
    public var requirement10_5: String?
    public var requirement10_6: String?
    public var requirement10_7: String?
    public var requirement10_8: String?
    public var requirement10_9: String?
    public var requirement10_10: String?
    public var requirement11_1: String?
    public var requirement11_2: String?
    public var requirement11_3: String?
    public var requirement11_4: String?
    public var requirement11_5: String?
    public var requirement11_6: String?
    public var requirement11_7: String?
    public var requirement11_8: String?
    public var requirement11_9: String?
    public var requirement11_10: String?
    public var requirement12_1: String?
    public var requirement12_2: String?
    public var requirement12_3: String?
    public var requirement12_4: String?
    public var requirement12_5: String?
    public var requirement12_6: String?
    public var requirement12_7: String?
    public var requirement12_8: String?
    public var requirement12_9: String?
    public var requirement12_10: String?

    public var offer_rate1: String?
    public var offer_rate2: String?
    public var offer_rate3: String?
    public var offer_rate4: String?
    public var offer_rate5: String?
    public var offer_rate6: String?
    public var offer_rate7: String?
    public var offer_rate8: String?
    public var offer_rate9: String?
    public var offer_rate10: String?

    public var program1: String?
    public var program2: String?
    public var program3: String?
    public var program4: String?
    public var program5: String?
    public var program6: String?
    public var program7: String?
    public var program8: String?
    public var program9: String?
    public var program10: String?

    public var code1: String?
    public var code2: String?
    public var code3: String?
    public var code4: String?
    public var code5: String?
    public var code6: String?
    public var code7: String?
    public var code8: String?
    public var code9: String?
    public var code10: String?

    public var interest1: String?
    public var interest2: String?
    public var interest3: String?
    public var interest4: String?
    public var interest5: String?
    public var interest6: String?
    public var interest7: String?
    public var interest8: String?
    public var interest9: String?
    public var interest10: String?

    public var method1: String?
    public var method2: String?
    public var method3: String?
    public var method4: String?
    public var method5: String?
    public var method6: String?
    public var method7: String?
    public var method8: String?
    public var method9: String?
    public var method10: String?

    public var seats9ge1: String?
    public var seats9ge2: String?
    public var seats9ge3: String?
    public var seats9ge4: String?
    public var seats9ge5: String?
    public var seats9ge6: String?
    public var seats9ge7: String?
    public var seats9ge8: String?
    public var seats9ge9: String?
    public var seats9ge10: String?

    public var grade9gefilledflag1: String?
    public var grade9gefilledflag2: String?
    public var grade9gefilledflag3: String?
    public var grade9gefilledflag4: String?
    public var grade9gefilledflag5: String?
    public var grade9gefilledflag6: String?
    public var grade9gefilledflag7: String?
    public var grade9gefilledflag8: String?
    public var grade9gefilledflag9: String?
    public var grade9gefilledflag10: String?
    public var grade9geapplicants1: String?
    public var grade9geapplicants2: String?
    public var grade9geapplicants3: String?
    public var grade9geapplicants4: String?
    public var grade9geapplicants5: String?
    public var grade9geapplicants6: String?
    public var grade9geapplicants7: String?
    public var grade9geapplicants8: String?
    public var grade9geapplicants9: String?
    public var grade9geapplicants10: String?

    public var seats9swd1: String?
    public var seats9swd2: String?
    public var seats9swd3: String?
    public var seats9swd4: String?
    public var seats9swd5: String?
    public var seats9swd6: String?
    public var seats9swd7: String?
    public var seats9swd8: String?
    public var seats9swd9: String?
    public var seats9swd10: String?

    public var grade9swdfilledflag1: String?
    public var grade9swdfilledflag2: String?
    public var grade9swdfilledflag3: String?
    public var grade9swdfilledflag4: String?
    public var grade9swdfilledflag5: String?
    public var grade9swdfilledflag6: String?
    public var grade9swdfilledflag7: String?
    public var grade9swdfilledflag8: String?
    public var grade9swdfilledflag9: String?
    public var grade9swdfilledflag10: String?

    public var grade9swdapplicants1: String?
    public var grade9swdapplicants2: String?
    public var grade9swdapplicants3: String?
    public var grade9swdapplicants4: String?
    public var grade9swdapplicants5: String?
    public var grade9swdapplicants6: String?
    public var grade9swdapplicants7: String?
    public var grade9swdapplicants8: String?
    public var grade9swdapplicants9: String?
    public var grade9swdapplicants10: String?

    public var seats1specialized: String?
    public var seats2specialized: String?
    public var seats3specialized: String?
    public var seats4specialized: String?
    public var seats5specialized: String?
    public var seats6specialized: String?

    public var applicants1specialized: String?
    public var applicants2specialized: String?
    public var applicants3specialized: String?
    public var applicants4specialized: String?
    public var applicants5specialized: String?
    public var applicants6specialized: String?

    public var appperseat1specialized: String?
    public var appperseat2specialized: String?
    public var appperseat3specialized: String?
    public var appperseat4specialized: String?
    public var appperseat5specialized: String?
    public var appperseat6specialized: String?

    public var seats101: String?
    public var seats102: String?
    public var seats103: String?
    public var seats104: String?
    public var seats105: String?
    public var seats106: String?
    public var seats107: String?
    public var seats108: String?
    public var seats109: String?
    public var seats1010: String?

    public var admissionspriority11: String?
    public var admissionspriority12: String?
    public var admissionspriority13: String?
    public var admissionspriority14: String?
    public var admissionspriority15: String?
    public var admissionspriority16: String?
    public var admissionspriority17: String?
    public var admissionspriority18: String?
    public var admissionspriority19: String?
    public var admissionspriority110: String?
    public var admissionspriority21: String?
    public var admissionspriority22: String?
    public var admissionspriority23: String?
    public var admissionspriority24: String?
    public var admissionspriority25: String?
    public var admissionspriority26: String?
    public var admissionspriority27: String?
    public var admissionspriority28: String?
    public var admissionspriority29: String?
    public var admissionspriority210: String?
    public var admissionspriority31: String?
    public var admissionspriority32: String?
    public var admissionspriority33: String?
    public var admissionspriority34: String?
    public var admissionspriority35: String?
    public var admissionspriority36: String?
    public var admissionspriority37: String?
    public var admissionspriority38: String?
    public var admissionspriority39: String?
    public var admissionspriority310: String?
    public var admissionspriority41: String?
    public var admissionspriority42: String?
    public var admissionspriority43: String?
    public var admissionspriority44: String?
    public var admissionspriority45: String?
    public var admissionspriority46: String?
    public var admissionspriority47: String?
    public var admissionspriority48: String?
    public var admissionspriority49: String?
    public var admissionspriority410: String?
    public var admissionspriority51: String?
    public var admissionspriority52: String?
    public var admissionspriority53: String?
    public var admissionspriority54: String?
    public var admissionspriority55: String?
    public var admissionspriority56: String?
    public var admissionspriority57: String?
    public var admissionspriority58: String?
    public var admissionspriority59: String?
    public var admissionspriority510: String?
    public var admissionspriority61: String?
    public var admissionspriority62: String?
    public var admissionspriority63: String?
    public var admissionspriority64: String?
    public var admissionspriority65: String?
    public var admissionspriority66: String?
    public var admissionspriority67: String?
    public var admissionspriority68: String?
    public var admissionspriority69: String?
    public var admissionspriority610: String?
    public var admissionspriority71: String?
    public var admissionspriority72: String?
    public var admissionspriority73: String?
    public var admissionspriority74: String?
    public var admissionspriority75: String?
    public var admissionspriority76: String?
    public var admissionspriority77: String?
    public var admissionspriority78: String?
    public var admissionspriority79: String?
    public var admissionspriority710: String?

    public var eligibility1: String?
    public var eligibility2: String?
    public var eligibility3: String?
    public var eligibility4: String?
    public var eligibility5: String?
    public var eligibility6: String?
    public var eligibility7: String?
    public var eligibility8: String?
    public var eligibility9: String?
    public var eligibility10: String?

    public var auditioninformation1: String?
    public var auditioninformation2: String?
    public var auditioninformation3: String?
    public var auditioninformation4: String?
    public var auditioninformation5: String?
    public var auditioninformation6: String?
    public var auditioninformation7: String?
    public var auditioninformation8: String?
    public var auditioninformation9: String?
    public var auditioninformation10: String?

    public var common_audition1: String?
    public var common_audition2: String?
    public var common_audition3: String?
    public var common_audition4: String?
    public var common_audition5: String?
    public var common_audition6: String?
    public var common_audition7: String?
    public var common_audition8: String?
    public var common_audition9: String?
    public var common_audition10: String?

    public var grade9geapplicantsperseat1: String?
    public var grade9geapplicantsperseat2: String?
    public var grade9geapplicantsperseat3: String?
    public var grade9geapplicantsperseat4: String?
    public var grade9geapplicantsperseat5: String?
    public var grade9geapplicantsperseat6: String?
    public var grade9geapplicantsperseat7: String?
    public var grade9geapplicantsperseat8: String?
    public var grade9geapplicantsperseat9: String?
    public var grade9geapplicantsperseat10: String?
    public var grade9swdapplicantsperseat1: String?
    public var grade9swdapplicantsperseat2: String?
    public var grade9swdapplicantsperseat3: String?
    public var grade9swdapplicantsperseat4: String?
    public var grade9swdapplicantsperseat5: String?
    public var grade9swdapplicantsperseat6: String?
    public var grade9swdapplicantsperseat7: String?
    public var grade9swdapplicantsperseat8: String?
    public var grade9swdapplicantsperseat9: String?
    public var grade9swdapplicantsperseat10: String?

    public var primary_address_line_1: String?
    public var city: String?
    public var postcode: String?
    public var state_code: String?
    public var latitude: String?
    public var longitude: String?
    public var community_board: String?
    public var council_district: String?
    public var census_tract: String?
    public var bin: String?
    public var bbl: String?
    public var nta: String?
    public var borough: String?
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getSchoolList()
    }
    

    func getSchoolList() {
        let apiToContact = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
        // This code will call the iTunes top 25 movies endpoint listed above
        AF.request(apiToContact).validate().responseJSON { response in
            switch response.result {
                case .success:
                print("Success")
                print(response.data)
                if let data = response.data {
                    do {
                        let decoder = JSONDecoder()
                        let versions = try decoder.decode([NYCSchool].self, from: data)
                        print(versions.count)
                        print(versions.first?.dbn)
                    } catch {
                        print(error)
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func callSchoolList() {
        let apiToContact = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
        AF.request(apiToContact).validate().responseJSON { response in
            switch response.result {
                case .success:
                print("Success")
                print(response.data)
                if let data = response.data {
                    do {
                        let decoder = JSONDecoder()
                        let versions = try decoder.decode([SATResults].self, from: data)
                        print(versions.count)
                        print(versions.first?.dbn)
                    } catch {
                        print(error)
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }


}

