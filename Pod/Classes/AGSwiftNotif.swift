//
//  AGSwiftNotif.swift
//  Partying
//
//  Created by Nicolas on 28/09/2016.
//  Copyright © 2016 Nicolas Charvoz. All rights reserved.
//

import Foundation

public class AGSwiftNotif {

    private var observerList = [AnyObject]()

    public init(){

    }
    public func registerObserver(name:String!, object:AnyObject?=nil, completionHandler:@escaping (Notification!)->Void){
        let observer = NotificationCenter.default.addObserver(forName: Notification.Name(name), object: object, queue: nil, using: completionHandler)

        observerList.append(observer)
    }

    public func postNotification(name:String!,infos:[NSObject:AnyObject]?=nil){
        NotificationCenter.default.post(name: Notification.Name(name), object: nil, userInfo: infos)
    }

    public func registerGroupObserver(names:[String],object:AnyObject?=nil, completionHandler:@escaping (Notification!)->Void){
        for name in names{
            let observer = NotificationCenter.default.addObserver(forName: Notification.Name(name), object: object, queue: nil, using: completionHandler)
            observerList.append(observer)
        }
    }

    deinit{
        for observer in observerList{
            NotificationCenter.default.removeObserver(observer)
        }
        observerList = []
    }
}
