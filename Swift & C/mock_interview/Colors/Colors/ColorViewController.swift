//
//  ColorViewController.swift
//  Colors
//
//  Created by Rodney Sampson on 10/20/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
