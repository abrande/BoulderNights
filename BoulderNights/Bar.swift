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
    
    var eventName: String
    var time: String
    var description: String
    var date: String
    var barName: String
    var location: String
    var rating: String
    var overview: String
    var phone: String
    var email: String
    var website: String
    var imageUrl: String
    
    
    init(json: [String:AnyObject]) {
        self.barName = json["barName"] as! String
        self.description = json["description"] as! String
        self.location = json["location"] as! String
        self.rating = json["rating"] as! String
        self.overview = json["overview"] as! String
        self.phone = json["phone"] as! String
        self.email = json["email"] as! String
        self.website = json["website"] as! String
        self.eventName = json["eventName"] as! String
        self.time = json["time"] as! String
        self.date = json["date"] as! String
        self.imageUrl = json["imageUrl"] as! String
    }
    
}