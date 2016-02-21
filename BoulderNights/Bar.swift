//
//  Bar.swift
//  BoulderNights
//
//  Created by Ana-Sophia Brande on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import UIKit
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
    
    init(json: NSDictionary) {
        self.name = json["name"] as? String
        self.description = json["description"] as? String
        self.html_url = json["html_url"] as? String
    }
}