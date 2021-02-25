//
//  ItemBadgeView.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import UIKit
import Tools

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
        view.heightAnchor.constraint(equalToConstant: 55).isActive = true
        view.widthAnchor.constraint(equalToConstant: 55).isActive = true
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

            itemImageView.topAnchor.constraint(equalTo: backgroundView.topAnchor),
            itemImageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            itemImageView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            itemImageView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),

        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

import SwiftUI

struct ItemImageView_Preview: PreviewProvider {
    static var previews: some View = createPreview(for: ItemBadgeView(), mode: .dark, width: 100, height: 100)
}

