//
//  DateFunctions.swift
//  kHelpers
//
//  Created by sMac on 30/12/2016.
//  Copyright © 2016 Sunnyface.com. All rights reserved.
//

import Foundation


public func getTheDate(_ format:String = "yyyy-MM-dd H:i:s") -> String
{
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
}
