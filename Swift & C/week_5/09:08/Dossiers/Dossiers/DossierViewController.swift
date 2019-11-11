//
//  DossierViewController.swift
//  Dossiers
//
//  Created by Rodney Sampson on 9/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class DossierViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lastKnownLocationTextField: UITextField!
    @IBOutlet var knownAssociatesTextField: UITextField!
    @IBOutlet var occupationTextField: UITextField!
    @IBOutlet var languagesSpokenTextField: UITextField!
    
    var dossier: Dossier?
    var dossierIndex: Int?
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        title = dossier?.name
        nameTextField.text = dossier!.name
        lastKnownLocationTextField.text = dossier!.lastKnownLocation
        knownAssociatesTextField.text = dossier!.knownAssociates.joined(separator: ", ")
        occupationTextField.text = dossier!.occupation
        languagesSpokenTextField.text = dossier!.languagesSpoken.joined(separator: ", ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        let viewControllers = self.navigationController?.viewControllers;
        let rootViewController = viewControllers?.first
        (rootViewController as! OrganizationViewController).operatives?[dossierIndex!] = dossier!
    }
    
    @IBAction func saveText(_ sender: AnyObject) {
        if let input = (sender as! UITextField).text, input.characters.count > 0 {
            if sender === nameTextField {
                dossier?.name = input
                title = input
            } else if sender === lastKnownLocationTextField {
                dossier?.lastKnownLocation = input
            } else if sender === knownAssociatesTextField {
                dossier?.knownAssociates = [input]
            } else if sender === occupationTextField {
                dossier?.occupation = input
            } else if sender === languagesSpokenTextField {
                dossier?.languagesSpoken = [input]
            } else {
                fatalError("This should never happen. Ever")
            }
        }
    }
}

extension DossierViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return (textField.text?.isEmpty ?? true) == false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        saveText(textField)
    }
    
    
}
