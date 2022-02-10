//
//  PersonDataViewController.swift
//  Persons List
//
//  Created by Анастасия Ступникова on 09.02.2022.
//

import UIKit

class PersonDataViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.title = "\(person.name) \(person.surname)"
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
