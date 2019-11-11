//
//  ViewController.swift
//  Colors
//
//  Created by Rodney Sampson on 10/20/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let colors: [UIColor] = [UIColor.red, UIColor.yellow, UIColor.blue]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let colorView = storyboard.instantiateViewController(withIdentifier: "ColorViewController") as! ColorViewController
        colorView.color = colors[indexPath.row]
        show(colorView, sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        let color = colors[indexPath.row]
        cell?.textLabel?.text = color.description
        return cell!
    }

}
