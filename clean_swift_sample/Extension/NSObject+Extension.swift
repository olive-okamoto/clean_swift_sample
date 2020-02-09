//
//  NSObject+Extension.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation

extension NSObject {
    class var className: String {
        get {
            return String(describing: self)
        }
    }
}
