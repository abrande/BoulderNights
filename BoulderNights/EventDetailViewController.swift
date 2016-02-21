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

    @IBOutlet var eventImageView: UIImageView!

    @IBOutlet var barName: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var eventName: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var overview: UILabel!
    @IBOutlet var website: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fillInData()
    }

    func fillInData() {
        guard let bar = bar else { return }
        barName.text = bar.barName
        address.text = bar.location
        phoneNumber.text = bar.phone
        eventName.text = bar.eventName
        time.text = bar.time
        overview.text = bar.overview
        website.text = bar.website
    }

    static func viewController() -> EventDetailViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("EventDetailViewController") as! EventDetailViewController

        return vc
    }
    
}
