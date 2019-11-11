//
//  ViewController.swift
//  SelfIntroduction
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        
        if let id = segue.identifier {
            switch id {
            case "bio":
                destination.title = "About Sampson"
            case "madLib":
                destination.title = "Mad Lib"
            default:
                destination.title = "error"
            }
        }
    }

}

