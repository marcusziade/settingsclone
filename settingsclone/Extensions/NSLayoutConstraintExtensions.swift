//
//  NSLayoutConstraintExtensions.swift
//  
//
//  Created by Marcus Ziadé on 7.2.2021.
//

import UIKit

public extension NSLayoutConstraint {

    func named(_ name: String) -> NSLayoutConstraint {
        self.identifier = name
        return self
    }

    func with(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}
