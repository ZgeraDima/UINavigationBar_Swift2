//
//  Lesson 78 UINavigationBar.swift
//  Lesson 78 UINavigationBar
//
//  Created by master on 27.04.17.
//  Copyright © 2017 master. All rights reserved.
//

import Foundation

/*
 
UINavigationBar, UINavigationController
---------------------------------------
 
 - это на главном экране две кнопки - вперед, назад - он находится вверху окна
 toolbar - находится внизу экрана
 
 
 https://developer.apple.com/reference/uikit/uinavigationcontroller
 
 
 
 


    init(rootViewController: UIViewController)
    var viewControllers: [UIViewController] { get set }
     
    init(rootViewController: UIViewController)
    var viewControllers: [UIViewController] { get set }
     func pushViewController(_ viewController: UIViewController, 
                    animated: Bool)//добавляет новый контроллер к экрану телефона
     
     
    func popViewController(animated: Bool) -> UIViewController? //позволяет вернуться к предыдущему контролеру, путем удаления предыдущего
 
 
    var navigationBar: UINavigationBar { get }//возвращает ссылку на NovigationBar
 
    var toolbar: UIToolbar! { get }

    func setToolbarHidden(_ hidden: Bool, animated: Bool)

    func setNavigationbarHidden(_ hidden: Bool, animated: Bool)
 
 
     класс UIToolbar
    ---------------
 toolbar - это коллекция кнопок
  ---------------

var items: [UIBarButtonItem]? { get set }
 
var barStyle: UIBarStyle { get set }
var barTintColor: UIColor? { get set }
var tintColor: UIColor! { get set }
 
weak var delegate: UIToolbarDelegate? { get set }
 
 
 //---------- Lesson 79
 
 
 
 класс UIToolbar
---------------

var items: [UIBarButtonItem]? { get set }

var barStyle: UIBarStyle { get set }
var barTintColor: UIColor? { get set }

var tintColor: UIColor! { get set }

weak var delegate: UIToolbarDelegate? { get set }

======

MyNavigationController.viewDidLoad
----------------------------------

self.toolbar.barTintColor	= UIColor.magenta;
 

 
 Класс UIBarButtonItem (кнопка для UIToolbar и UINavigationBar)
--------------------------------------------------------------
конструктор:
 
init(barButtonSystemItem systemItem: UIBarButtonSystemItem, 
          target: Any?, 
          action: Selector?) // создает и задает стиль(иконка надпись)
 
 
Константы для UIBarButtonSystemItem :

(https://developer.apple.com/reference/uikit/uibarbuttonsystemitem)

- done
- edit
- save
- add
- flexibleSpace
- fixedSpace
- compose
- reply
- action
- organize
- bookmarks
- search
- refresh
- stop
- camera
- trash
...

 кнопка со своей картинкой:
 
 
init(image: UIImage?, 
           style: UIBarButtonItemStyle,	// plain (по умолчанию), done
          target: Any?, 
          action: Selector?)


 кнопка со своей надписью:
 
init(title: String?,
           style: UIBarButtonItemStyle,
          target: Any?, 
          action: Selector?)

 Для добавления к объекту UIToolbar : метод UIViewController setToolbarsItems
 
 Каждый UIViewController имеет ссылки (в обжективе это указатели): navigationController, navigationItem и имеет метод setToolbarsItems
 
 http://www.iconsearch.ru 
 
 
 func setToolbarItems(_ toolbarItems: [UIBarButtonItem]?, 
            animated: Bool)
 
 //-----------------
 
 
 Класс UIViewController
----------------------

var navigationItem: UINavigationItem { get }

Класс UINavigationItem (элемент UINavigationBar'a)
--------------------------------------------------
имеет кнопки:

var backBarButtonItem: UIBarButtonItem?
var leftBarButtonItems: [UIBarButtonItem]?
var leftBarButtonItem: UIBarButtonItem?
var rightBarButtonItems: [UIBarButtonItem]?
var rightBarButtonItem: UIBarButtonItem?

 
В нашем примере в методе viewDidload класса MyTableViewController :

self.navigationItem.righ
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
