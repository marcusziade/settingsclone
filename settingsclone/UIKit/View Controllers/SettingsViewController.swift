//
//  SettingsViewController.swift
//  settingsclone
//
//  Created by Marcus Ziadé on 25.2.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    // MARK: - Properties

    private let items = Items()

    // MARK: - UI Components

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped).forAutoLayout()
        view.register(cellType: ItemCell.self)
        view.dataSource = self
        view.delegate = self
        return view
    }()

    // MARK: - Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Go To SwiftUI",
            image: nil,
            primaryAction: UIAction(handler: { [self] _ in showSwiftUI() }),
            menu: nil
        )

        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    // MARK: - Methods

    private func showSwiftUI() {
        var view = ContentView()
        view.onClose = { [weak self] in
            self?.dismiss(animated: true)
        }
        let viewController = UIHostingController(rootView: view)
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
}

// MARK: - Tableview Datasource methods

extension SettingsViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        ListSection.allCases.count
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

// MARK: - Tableview Delegate methods

extension SettingsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        var title: String
        switch indexPath.section {
            case 0:
                title = items.connectivity[indexPath.row].title
            case 1:
                title = items.alert[indexPath.row].title
            case 2:
                title = items.preference[indexPath.row].title
            case 3:
                title = items.appStore[indexPath.row].title
            default:
                title = items.preInstalled[indexPath.row].title
        }
        let viewController = DetailViewViewController(title: title)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

import SwiftUI

struct SettingsViewController_Preview: PreviewProvider {
    static var previews: some View = Preview(
        for: SettingsViewController(),
        navigationControllerStyle: .wrap(prefersLargeTitles: true)
    )
    .preferredColorScheme(.dark)
}

