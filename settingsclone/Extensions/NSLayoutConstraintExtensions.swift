import UIKit

extension NSLayoutConstraint {

    func named(_ name: String) -> NSLayoutConstraint {
        self.identifier = name
        return self
    }

    func with(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}


