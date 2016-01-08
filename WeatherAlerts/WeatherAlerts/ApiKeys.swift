//
//  ApiKeys.swift
//  WeatherAlerts
//
//  Created by Nas@Mac on 8/1/59.
//  Copyright © พ.ศ. 2559 Nas@Mac. All rights reserved.
//

import Foundation

func valueForAPIKey(keyname keyname:String) -> String {
    // Credit to the original source for this technique at
    // http://blog.lazerwalker.com/blog/2014/05/14/handling-private-api-keys-in-open-source-ios-apps
    let filePath = NSBundle.mainBundle().pathForResource("ApiKeys", ofType:"plist")
    let plist = NSDictionary(contentsOfFile:filePath!)
    
    let value:String = (plist?.objectForKey(keyname))! as! String
    return value
}

let clientID = valueForAPIKey(keyname:"PARSE_CLIENT_ID")