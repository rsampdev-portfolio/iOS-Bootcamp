//
//  SecondViewController.swift
//  SeguePlay
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String? {
        didSet {
            title = name ?? "no name"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.magenta
    }
    
}
