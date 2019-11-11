//
//  MadLibStoryViewController.swift
//  SelfIntroduction
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class MadLibStoryViewController: UIViewController {
    
    var words: [String]?
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Story View"
        
        if let wordsArray = words {
            let text = "Sampson's two favorite words are \"\(wordsArray[0])\" and \"\(wordsArray[1])\""
            textView.text = text
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
