//
//  Organization.swift
//  Dossiers
//
//  Created by Rodney Sampson on 9/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

class Organization {

    var name = "The Organization"
    var operatives = [Dossier]()
    
    init (name: String, operatives: [Dossier]) {
        self.name = name
        self.operatives = operatives
    }
    
}
