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
    let time: String
    let description: String
    let date: String
    let barName: String
    let location: String
    let rating: String
    let overview: String
    let phone: String
    let email: String
    let website: String
    
    init(barName: String, location: String, rating: String, overview: String, phone: String, email: String, website: String, name: String, time: String, date: String) {
        self.barName = barName
        self.location = location
        self.rating = rating
        self.overview = overview
        self.phone = phone
        self.email = email
        self.website = website
        self.name = name
        self.time = time
        self.date = date
    }
    
    /*init(json: NSDictionary) {
        self.barName = json["barName"] as? String
        self.description = json["description"] as? String
        self.html_url = json["html_url"] as? String
    }
*/
}