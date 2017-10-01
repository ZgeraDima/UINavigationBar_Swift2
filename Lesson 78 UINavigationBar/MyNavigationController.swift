//
//  MyNavigationController.swift
//  Lesson 78 UINavigationBar
//
//  Created by master on 27.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import Foundation
import UIKit

class MyNavigationController: UINavigationController
{
    
    // ----- Class methods -------------------------------------------
	override func viewDidLoad()
	{
        	super.viewDidLoad()

		print ("MyNavigationController.viewDidLoad: \(String(describing: self.navigationBar.items?.count))");
		
		self.navigationBar.items?[0].title	= "Список продуктов";
        
        self.toolbar.barTintColor	= UIColor.magenta;
        //tollbar.setColor	= UIColor
        
	}
		
}
