//
//  SettingsViewController.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import UIKit
import Tools

class SettingsViewController: UIViewController {

    // MARK: - Properties
    let items = Items()

    // MARK: - UI Components
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped).forAutoLayout()
        view.register(cellType: ItemCell.self)
        view.dataSource = self
        return view
    }()

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

// MARK: - Tableview Datasource methods
extension SettingsViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        Section.allCases.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return items.connectivity.count
            case 1:
                return items.alert.count
            case 2:
                return items.preference.count
            case 3:
                return items.appStore.count
            default:
                return items.preInstalled.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ItemCell = tableView.dequeueReusableCell(for: indexPath)
        switch indexPath.section {
            case 0:
                cell.configure(with: items.connectivity[indexPath.row])
            case 1:
                cell.configure(with: items.alert[indexPath.row])
            case 2:
                cell.configure(with: items.preference[indexPath.row])
            case 3:
                cell.configure(with: items.appStore[indexPath.row])
            default:
                cell.configure(with: items.preInstalled[indexPath.row])
        }
        return cell
    }

}

import SwiftUI

struct SettingsViewController_Preview: PreviewProvider {
    static var previews: some View = createiPhonePreview(for: UINavigationController(rootViewController: SettingsViewController()), mode: .dark)
}

