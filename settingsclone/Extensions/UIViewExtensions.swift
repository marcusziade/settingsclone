//
//  UIViewExtensions.swift
//  
//
//  Created by Marcus Ziadé on 7.2.2021.
//

import UIKit

public extension UIView {

    func forAutoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }

    func addShadow(color: UIColor = .black, offset: CGSize = CGSize(width: 1.0, height: 1.0), opacity: Float = 0.15, radius: CGFloat = 4.0) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
}
