//
//  PropertyNames.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/14.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

protocol PropertyNames {
    func propertyNames() -> [String]
}
extension PropertyNames {
    func propertyNames() -> [String] {
        return Mirror(reflecting: self).children.compactMap{ $0.label }
    }
}
