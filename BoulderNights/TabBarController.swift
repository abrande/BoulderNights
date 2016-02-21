//
//  TabBarController.swift
//  BoulderNights
//
//  Created by Justin Powell on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().barTintColor = UIColor.blackColor()
        UINavigationBar.appearance().barTintColor = UIColor.blackColor()
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().tintColor = UIColor.whiteColor()

        UINavigationBar.appearance().barStyle = .Black
    }
}
