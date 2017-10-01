//
//  MyAddEditViewController.swift
//  Lesson 78 UINavigationBar
//
//  Created by master on 27.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import UIKit

class MyAddEditViewController: UIViewController
{
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldPrice: UITextField!
    
    @IBOutlet weak var textFiledWeight: UITextField!
    
    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var btnCancel: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

	@IBAction	func	btnApplyClick() -> Void
	{
		print("btnApplyClick");
		self.navigationController?.popViewController(animated: true);
	}

				

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
