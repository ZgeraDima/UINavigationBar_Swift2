//
//  Product.swift
//  Lesson 76 Swift TableView
//
//  Created by master on 20.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import Foundation

class Product
{
    var _name  : String = "";
    var _price : Double;
    var _weight = Int();
    
    init(name : String, price : Double, weight : Int)
    {
        self._name = name;
        self._price = price;
        self._weight = weight;
    }
    
    var name : String
    {
        get
        {
            return self._name;
        }
        set
        {
            self._name = newValue;
        }
    }
    
    var price : Double
    {
        get
        {
            return self._price;
        }
        set
        {
            self._price = newValue;
        }
    }
    var weight : Int
    {
        get
        {
            return self._weight;
        }
        set
        {
            self._weight = newValue;
        }
    }
    
    
}

