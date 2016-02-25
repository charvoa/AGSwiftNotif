//
//  ViewController.swift
//  AGSwiftNotif
//
//  Created by antoinegarcia on 02/25/2016.
//  Copyright (c) 2016 antoinegarcia. All rights reserved.
//

import UIKit
import AGSwiftNotif
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let notification = AGSwiftNotif()
        notification.registerObserver("test") { (notification:NSNotification!) -> Void in
            print("OK")
        }
        notification.registerGroupObserver(["test","coucou"]) { (notification:NSNotification!) -> Void in
            print(notification.name)
        }
        notification.postNotification("test")
        notification.postNotification("coucou")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

