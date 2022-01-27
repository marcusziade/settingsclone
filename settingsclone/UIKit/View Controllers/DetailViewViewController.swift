//
//  DetailViewViewController.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 27.2.2021.
//

import UIKit
import Tools

class DetailViewViewController: UIViewController {

    // MARK: - UI Components

    private let titleLabel: UILabel = {
        let label = UILabel().forAutoLayout()
        return label
    }()

    // MARK: - Init

    init(title: String) {
        titleLabel.text = title
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

import SwiftUI

struct DetailViewViewController_Preview: PreviewProvider {
    static var previews: some View = Preview(for: DetailViewViewController(title: "General"))
        .preferredColorScheme(.dark)
}

