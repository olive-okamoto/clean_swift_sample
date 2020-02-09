//
//  UITableView+Extension.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import UIKit

extension UITableView {
    func registerNibForCellClass(_ cellClass: UITableViewCell.Type) {
        let reuseIdentifier = cellClass.reuseIdentifier()
        let nibCell = UINib(nibName: reuseIdentifier, bundle: nil)
        
        register(nibCell, forCellReuseIdentifier: reuseIdentifier)
    }
}

extension UITableViewCell {
    class func reuseIdentifier() -> String {
        return "\(self)"
    }
}
