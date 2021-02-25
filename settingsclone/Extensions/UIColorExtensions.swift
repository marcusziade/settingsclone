//
//  UIColorExtensions.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import UIKit

extension UIColor {

    static func colorWith(name:String) -> UIColor? {
        let selector = Selector("\(name)Color")
        if UIColor.self.responds(to: selector) {
            let color = UIColor.self.perform(selector).takeUnretainedValue()
            return (color as? UIColor)
        } else {
            return nil
        }
    }

}
