//
//  FullPersonInfoViewController.swift
//  Persons List
//
//  Created by Анастасия Ступникова on 09.02.2022.
//

import UIKit

class FullPersonInfoViewController: UITableViewController {
    
    // MARK: - Private Properties
    private let personList = DataManager.getPerson()
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int { 2 }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "data",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.section]
        
        if indexPath.row % 2 == 1 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        titleForHeaderInSection section: Int
    ) -> String? {
        "\(personList[section].name) \(personList[section].surname)"
    }
    
    override func tableView(
        _ tableView: UITableView,
        willDisplayHeaderView view: UIView,
        forSection section: Int
    ) {
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor.systemGray6
    }
    
    override func tableView(
        _ tableView: UITableView,
        heightForHeaderInSection section: Int
    ) -> CGFloat {
        if section >= 1 {
            return 10.0
        }
        
        return 30.0
    }
}
