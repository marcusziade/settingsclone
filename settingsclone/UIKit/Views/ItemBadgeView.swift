import UIKit

class ItemBadgeView: UIView {

    // MARK: - UI Components

    let backgroundView: UIView = {
        let view = UIView().forAutoLayout()
        view.layer.cornerRadius = 8
        view.backgroundColor = .red
        return view
    }()

    let itemImageView: UIImageView = {
        let view = UIImageView().forAutoLayout()
        view.heightAnchor.constraint(equalToConstant: 25).isActive = true
        view.widthAnchor.constraint(equalToConstant: 25).isActive = true
        view.contentMode = .scaleAspectFit
        view.tintColor = .white
        view.image = UIImage(systemName: "speaker.wave.3")
        return view
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(backgroundView)
        backgroundView.addSubview(itemImageView)

        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),

            itemImageView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 4),
            itemImageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 4),
            itemImageView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -4),
            itemImageView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -4),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

import SwiftUI

struct ItemImageView_Preview: PreviewProvider {
    static var previews: some View = Preview(for: ItemBadgeView())
        .previewLayout(.fixed(width: 25, height: 25))
}



