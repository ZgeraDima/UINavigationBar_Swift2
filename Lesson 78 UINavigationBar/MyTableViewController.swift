//
//  MyTableViewController.swift
//  Lesson 78 UINavigationBar
//
//  Created by master on 27.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import Foundation
import UIKit

class MyTableViewController: UITableViewController
{
   
    // ----- Class members --------------------------------
	var	products	: NSMutableArray	= NSMutableArray();

	override func viewDidLoad()
	{
        	super.viewDidLoad()
		
		// ----- Загрузка случайными продуктами -----------------------
		let	prodNames	: NSArray	= 
				["Snickers", "Mars", "Bounty"];
		for i in 0..<50
		{
			let	randProdName	: Int	= 
			Int(arc4random_uniform(UInt32(prodNames.count)));
			let	randProdNameIndex	: Int		= 
			Int(arc4random_uniform(UInt32(89)) + 10);
			let	randPrice	: Double	= 
			Double(arc4random_uniform(1000)) / 10.0;
			let	randWeight	: Int		= 
			Int(arc4random_uniform(UInt32(10)) * 10);
			let	P		: Product	= 
			Product(name: String(format: "(%i) %@-%i", i,
				prodNames.object(at : randProdName) as! String, 
				randProdNameIndex),
				price: randPrice, weight: randWeight);
			self.products.add(P);
		}
        
        
        //-------Lesson 79
        
        
        // ----- Показываем UIToolbar ---------------------
        
        self.navigationController?.setToolbarHidden(false, animated: true);
        
        // ----- Добавляем кнопки в UIToolbar -------------
        
        self.setToolbarItems(
            [
                
                UIBarButtonItem(barButtonSystemItem :
                    UIBarButtonSystemItem.cancel,
                                target: self, action: #selector(barButtonClick(button:))),
                
                UIBarButtonItem(barButtonSystemItem :
                    UIBarButtonSystemItem.compose,
                                target: self, action: #selector(barButtonClick(button:))),
                
                UIBarButtonItem(title: "Hello",
                                style: UIBarButtonItemStyle.plain,
                                target: self, action: #selector(barButtonClick(button:))),
                
                UIBarButtonItem(image: UIImage(named: "Image"),
                                style: UIBarButtonItemStyle.plain, 
                                target: self, action: #selector(barButtonClick(button:)))
            ],
            animated: true);
        
        
        //в навигаторе справа появилась кнопка справа
        
        self.navigationItem.rightBarButtonItem	=
            UIBarButtonItem(barButtonSystemItem : UIBarButtonSystemItem.reply,
                                          target: self,
                                          action: #selector(navigationButtonClick(button:)));
        
    }
    
    
    //============
    func	navigationButtonClick(button: UIBarButtonItem) -> Void
    {
        print("navigationButtonClick");
    }
    
    
    
    // ==========
    func barButtonClick(button : UIBarButtonItem) -> Void
    {
        print("barButtonClick : \(button)");
        
        var index : Int = 0;
        
        for var barItem : UIBarButtonItem in self.toolbarItems!
        {
            if (barItem == button)
            {
                print("Клик по кнопке \(index)");
            }
            index += 1;
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1;
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        switch section
        {
        case 0 :
            return	self.products.count;
                
        default :
            return	0;
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    {
        var	cell		: UITableViewCell?	=
            tableView.dequeueReusableCell(withIdentifier: "cellId");
            
        if cell == nil
        {
            cell	= UITableViewCell(style: UITableViewCellStyle.value1,
                                      reuseIdentifier: "cellId");
                
        }
        
        let	P	: Product	= 
                self.products.object(at: indexPath.row) as! Product;
        cell?.textLabel?.text		= P.name;
        cell?.detailTextLabel?.text	= String(format: "%lg грн.", P.price);
        cell?.detailTextLabel?.textColor	= UIColor.red;
        
        return cell!;
    }
    
    
    override func tableView(_ tableView: UITableView,
	editingStyleForRowAt indexPath: IndexPath) -> 
		UITableViewCellEditingStyle
    {
        return	UITableViewCellEditingStyle.delete;
    }

    override func tableView(_ tableView: UITableView, 
        canEditRowAt indexPath: IndexPath) -> Bool
    {
            return true
    }

    override func tableView(_ tableView: UITableView,
	editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
   
        {
        let	tvrAction	: UITableViewRowAction	=
            UITableViewRowAction(
                style: UITableViewRowActionStyle.normal,
                title: "Edit",
                handler:
                {
                    (action : UITableViewRowAction,
                    indexPath : IndexPath) -> Void in
                    
                    print("Edit \(indexPath.row)");
                    //**
        let	viewContr	: UIViewController	=
                UIViewController(nibName: nil, bundle: nil);
        viewContr.view	= MyView(frame: CGRect(x: 0, y: 0, width: 100, height: 100));

        self.navigationController?.pushViewController(viewContr, animated: true);
                    
                    
            });
        tvrAction.backgroundColor	= UIColor.green;
        
        let	tvrAction1	: UITableViewRowAction	=
            UITableViewRowAction(
                style: UITableViewRowActionStyle.normal,
                title: "Add",
                handler:
                {
                    (action : UITableViewRowAction,
                    indexPath : IndexPath) -> Void in
                    
                    print("Add \(indexPath.row)");
                    //***
                    
        let	viewContr	: MyAddEditViewController	=
                MyAddEditViewController(nibName: nil, bundle: nil);
        self.navigationController?.pushViewController(viewContr, animated: true);
      
            });
        tvrAction1.backgroundColor	= UIColor.magenta;
        return	[tvrAction, tvrAction1];
    }
    
}


