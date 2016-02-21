//
//  TabBarController.swift
//  BoulderNights
//
//  Created by Amanda on 2/20/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        UINavigationBar.appearance().barTintColor = UIColor.blackColor()
    }
}