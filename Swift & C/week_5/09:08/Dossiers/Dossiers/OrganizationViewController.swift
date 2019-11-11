//
//  ViewController.swift
//  Dossiers
//
//  Created by Rodney Sampson on 9/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class OrganizationViewController: UIViewController {
    var tableView: UITableView {
        return view as! UITableView
    }
    
    var organization: Organization?
    var operatives: [Dossier]?
    
    override func loadView() {
        view = UITableView()
        let tableView = view as! UITableView
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLoad() {
        operatives = [Dossier]()
        operatives?.append(Dossier.init(name: "Agent Fizz", lastKnownLocation: "The Iron Yard", knownAssociates: ["Buzz", "FizzBuzz"], occupation: "Dossier", languagesSpoken: ["English"]))
        
        operatives?.append(Dossier.init(name: "Agent Buzz", lastKnownLocation: "The Iron Yard", knownAssociates: ["Fizz", "FizzBuzz"], occupation: "Dossier", languagesSpoken: ["English"]))
        
        operatives?.append(Dossier.init(name: "Agent FizzBuzz", lastKnownLocation: "The Iron Yard", knownAssociates: ["Fizz", "Buzz"], occupation: "Dossier", languagesSpoken: ["English"]))
        
        organization = Organization.init(name: "Org.org", operatives: operatives!)
        
        title = organization?.name
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
}

extension OrganizationViewController : UITableViewDataSource {
    @objc(numberOfSectionsInTableView:) func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operatives!.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let dossier = operatives![indexPath.row]
        cell.textLabel?.text = dossier.name
        return cell
    }
}

extension OrganizationViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dossierView = DossierViewController()
        dossierView.dossierIndex = indexPath.row
        dossierView.dossier = operatives![indexPath.row]
        show(dossierView, sender: self)
    }
}
