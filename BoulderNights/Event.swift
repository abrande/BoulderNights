//
//  Event.swift
//  BoulderNights
//
//  Created by Justin Powell on 2/20/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import Foundation

class Event {
    let name: String
    let time: String
    let date: String
    var bar: Bar? = nil

    init(name: String, time: String, date: String) {
        self.name = name
        self.time = time
        self.date = date
    }
}
