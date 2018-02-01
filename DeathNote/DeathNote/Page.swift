//
//  Page.swift
//  DeathNote
//
//  Created by Siva Nadarassin on 27/01/2018.
//  Copyright © 2018 siva Nadarassin. All rights reserved.
//

import Foundation

class Page {
    var name : String = ""
    var desc : String
    var deathDate : Date
    init?(name: String, desc: String, deathDate: Date) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            print("init: error, name is empty")
            return nil
        }
        
        print("init: name=", name, " desc=", desc, " deathDate=", deathDate)
        
        self.name = name
        self.desc = desc
        self.deathDate = deathDate
    }
}

