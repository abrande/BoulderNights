//
//  Bar.swift
//  BoulderNights
//
//  Created by Justin Powell on 2/20/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import Foundation

class Bar {
    let name: String
    let location: String
    let rating: Int
    let overview: String
    let phone: String
    let email: String
    let website: String

    init(name: String, location: String, rating: Int, overview: String, phone: String, email: String, website: String) {
        self.name = name
        self.location = location
        self.rating = rating
        self.overview = overview
        self.phone = phone
        self.email = email
        self.website = website
    }
}
