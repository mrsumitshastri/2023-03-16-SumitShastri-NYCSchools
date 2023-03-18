//
//  NYCTableView+UITableView.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import UIKit

extension UITableView {
    
    func dequeueCell<T: UITableViewCell>(ofType type: T.Type) -> T     {
        let cellName = String(describing: T.self)
        
        return dequeueReusableCell(withIdentifier: cellName) as? T ?? T()
    }
}

