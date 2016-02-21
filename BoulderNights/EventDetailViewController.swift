//
//  EventDetailViewController.swift
//  BoulderNights
//
//  Created by Justin Powell on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import Foundation
import UIKit

class EventDetailViewController: UIViewController {

    var bar: Bar? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = bar!.eventName
    }

    static func viewController() -> EventDetailViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("EventDetailViewController") as! EventDetailViewController

        return vc
    }
    
}
