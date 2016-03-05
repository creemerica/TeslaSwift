//
//  TabController.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 05/03/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import UIKit

class TabController: UITabBarController {

	let service = TeslaSwift.defaultInstance
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		service.useMockServer = true
		
		if (!service.isAuthenticated) {
			
			performSegueWithIdentifier("loginSegue", sender: self)
			
		}
	}
}
