//
//  File.swift
//  
//
//  Created by Marcus Ziadé on 7.2.2021.
//

#if os(iOS)

import UIKit

@available(iOS 13.0, *)
public final class HapticEngine {

    static let selection = UISelectionFeedbackGenerator()
    static let result = UINotificationFeedbackGenerator()
    static let soft = UIImpactFeedbackGenerator(style: .soft)
    static let rigid = UIImpactFeedbackGenerator(style: .rigid)
    static let heavy = UIImpactFeedbackGenerator(style: .heavy)
}

#endif
