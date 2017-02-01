//
//  DateFunctions.swift
//  kHelpers
//
//  Created by sMac on 30/12/2016.
//  Copyright © 2016 Sunnyface.com. All rights reserved.
//

import Foundation


public func getTheDate(_ format:String = "yyyy-MM-dd HH:mm:ss",
                       fromDate date:Date = Date(),
                       locale:String = "es_ES",
                       style:DateFormatter.Style = .short) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: locale)
    
    if format != "" {
         formatter.dateFormat =  format
    } else {
        formatter.dateStyle = style
        formatter.timeStyle = .none
    }
    
    
    return formatter.string(from: date)
}


public func getStringDate(_ date: NSDate) -> String
{
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return formatter.string(from: date as Date)
}
