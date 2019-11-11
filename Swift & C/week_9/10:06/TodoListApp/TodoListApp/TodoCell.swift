//
//  TodoCell.swift
//  TodoListApp
//
//  Created by Rodney Sampson on 10/6/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import Foundation
import UIKit

class TodoCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dueDateLabel: UILabel!
    
    var todo: Todo!
    
}
