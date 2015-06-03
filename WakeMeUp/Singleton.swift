//
//  Singleton.swift
//  WakeMeUp
//
//  Created by Paul van Luling on 04/06/15.
//  Copyright (c) 2015 Paul van Luling. All rights reserved.
//

class Singleton {
    
    var sharedString = "shared string"
    
    var sharedInt = 54
    
    class var sharedInstance: Singleton {
        struct Static {
            static var instance: Singleton?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Singleton()
        }
        
        return Static.instance!
    }
}
