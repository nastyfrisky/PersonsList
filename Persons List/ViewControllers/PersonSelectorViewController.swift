//
//  PersonsListViewController.swift
//  Persons List
//
//  Created by Анастасия Ступникова on 09.02.2022.
//

import UIKit

class PersonSelectorViewController: UITableViewController {
    // MARK: - Private Properties
    private let personList = DataManager.getPerson()
    
    // MARK: - Table view data source
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        personList.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "person",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let personDataVC = segue.destination as? PersonDataViewController
        else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        personDataVC.person = person
    }
}
