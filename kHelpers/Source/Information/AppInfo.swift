//
//  AppInfo.swift
//  kHelpers
//
//  Created by sMac on 30/12/2016.
//  Copyright © 2016 Sunnyface.com. All rights reserved.
//

import Foundation



func getAppInfoDiccionary(){
    let nsObject: AnyObject? = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as AnyObject?
    print(nsObject ?? "")
}


    


