#if os(iOS)

import UIKit

final class HapticEngine {

    static let selection = UISelectionFeedbackGenerator()
    static let result = UINotificationFeedbackGenerator()
    static let soft = UIImpactFeedbackGenerator(style: .soft)
    static let rigid = UIImpactFeedbackGenerator(style: .rigid)
    static let heavy = UIImpactFeedbackGenerator(style: .heavy)
}

#endif


