//
//  ViewController.swift
//  SeguePlay
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var name: String?
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        
        textField.delegate = self;
    }
    
    @IBAction func saveText(_ sender: AnyObject) {
        if let input = textField.text, input.characters.count > 0 {
            self.name = input
        } else {
            print("\nText field is empty. Enter a name")
        }
        
        print("\nYour name is \(self.name). Hello \(self.name)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // let destination = segue.destination as? SecondViewController // crash and burn is not a SecondViewController
        let destination = segue.destination as? SecondViewController // return nil if not a SecondViewController
        if destination != nil {
            destination?.name = name
        }
    }
}

extension FirstViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //        if let text = textField.text {
        //            return text.isEmpty == false
        //        } else {
        //            return false
        //        }
        
        return (textField.text?.isEmpty ?? true) == false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        saveText(self)
    }
}
