//
//  ItemCell.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import UIKit
import Tools

class ItemCell: UITableViewCell, Reusable {

    // MARK: - UI Components

    private let itemBadgeView: ItemBadgeView = {
        let view = ItemBadgeView().forAutoLayout()
        return view
    }()

    private let titleLabel: UILabel = {
        let label = UILabel().forAutoLayout()
        label.text = NSLocalizedString("Item title", comment: "")
        return label
    }()

    // MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator

        let stackView = UIStackView(arrangedSubviews: [itemBadgeView, titleLabel]).forAutoLayout()
        stackView.axis = .horizontal
        stackView.spacing = 16
        stackView.alignment = .center
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: contentView.topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentView.leadingAnchor, multiplier: 2),
            contentView.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods

    func configure(with item: Item) {
        itemBadgeView.itemImageView.image = UIImage(systemName: item.image)
        itemBadgeView.backgroundView.backgroundColor = UIColor.colorWith(name: item.color.rawValue)
        titleLabel.text = item.title
    }
}

import SwiftUI

struct ItemCell_Preview: PreviewProvider {
    static var previews: some View = createPreview(for: ItemCell(), mode: .dark, width: 400, height: 80)
}
