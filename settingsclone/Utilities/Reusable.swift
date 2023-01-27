import UIKit

protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String { return String(describing: self) }
}

extension UITableView {

    func register<T: UITableViewCell>(cellType: T.Type) where T: Reusable {
        self.register(cellType, forCellReuseIdentifier: cellType.reuseIdentifier)
    }

    func registerNib<T: UITableViewCell>(cellType: T.Type) where T: Reusable {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        self.register(nib, forCellReuseIdentifier: cellType.reuseIdentifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T where T: Reusable {
        return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }

    func registerReusableHeaderFooterView<T: UITableViewHeaderFooterView>(_: T.Type) where T: Reusable {
        self.register(T.self, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T? where T: Reusable {
        return self.dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as! T?
    }
}

extension UICollectionView {

    func registerReusableCell<T: UICollectionViewCell>(cellType: T.Type) where T: Reusable {
        self.register(cellType, forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }

    func registerNib<T: UICollectionViewCell>(cellType: T.Type) where T: Reusable {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: Reusable {
        return self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }

    func registerReusableSupplementaryView<T: Reusable>(elementKind: String, _: T.Type) {
        self.register(T.self, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableSupplementaryView<T: UICollectionViewCell>(elementKind: String, indexPath: IndexPath) -> T where T: Reusable {
        return self.dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
}


