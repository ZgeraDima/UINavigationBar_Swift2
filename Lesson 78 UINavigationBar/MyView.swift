//
//  MyView.swift
//  Lesson 78 UINavigationBar
//
//  Created by master on 27.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import Foundation
import UIKit



class MyView: UIView
{

	override func draw(_ rect: CGRect)
	{
		let	context	: CGContext	= 
					UIGraphicsGetCurrentContext()!;
		context.setFillColor(red: 1.0, 
				green: 1.0, blue: 0.0, alpha: 1.0);

        context.fill(rect);

		context.setFillColor(red: 1.0, 
				green: 0.0, blue: 0.0, alpha: 1.0);

		context.fillEllipse(in: rect);
	}
}
