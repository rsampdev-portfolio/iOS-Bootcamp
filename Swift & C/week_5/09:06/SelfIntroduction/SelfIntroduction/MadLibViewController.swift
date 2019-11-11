//
//  MadLibViewController.swift
//  SelfIntroduction
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class MadLibViewController: UIViewController {
    
    var words: [String]?
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var storeTextButton: UIButton!
    @IBOutlet var playStoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetState()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? MadLibStoryViewController
        if destination != nil {
            destination?.words = words
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        resetState()
    }
    
    func resetState() {
        words = nil
        textField.text = ""
        textField.placeholder = "Enter a word"
        textField.isHidden = false
        storeTextButton.isHidden = false
        playStoryButton.isHidden = true;
        print("\n\n\n\n\n\n\n\nworking...")
    }
    
    @IBAction func saveText(_ sender: AnyObject) {
        if let input = textField.text, input.characters.count > 0 {
            if words == nil {
                words = [String]()
            }
            words?.append(input)
            
            if words != nil, (words?.count)! == 2 {
                textField.isHidden = true
                storeTextButton.isHidden = true
                playStoryButton.isHidden = false
            } else {
                textField.text = ""
                textField.placeholder = "Enter another word"
            }
        } else {
            print("\nText field is empty. Enter a word")
            textField.text = ""
            textField.placeholder = "\n\n\n\n\n\n\n\nnot working"
        }
    }
 
}

extension MadLibViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return (textField.text?.isEmpty ?? true) == false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        saveText(self)
    }
    
}
