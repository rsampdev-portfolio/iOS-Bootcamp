//
//  Dossier.swift
//  Dossiers
//
//  Created by Rodney Sampson on 9/8/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

class Dossier {
    
    var name = "Unknown"
    var lastKnownLocation = "Unknown"
    var knownAssociates = [String]()
    var occupation = "Unknown"
    var languagesSpoken = [String]()
    
    init (name: String, lastKnownLocation: String, knownAssociates: [String], occupation: String, languagesSpoken: [String]) {
        self.name = name
        self.lastKnownLocation = lastKnownLocation
        self.knownAssociates = knownAssociates
        self.occupation = occupation
        self.languagesSpoken = languagesSpoken
    }

}
