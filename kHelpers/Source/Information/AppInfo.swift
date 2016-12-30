//
//  AppInfo.swift
//  kHelpers
//
//  Created by sMac on 30/12/2016.
//  Copyright © 2016 Sunnyface.com. All rights reserved.
//

import Foundation




public func getAppBundleName() ->String {
    let bundleName: AnyObject? = Bundle.main.infoDictionary?["CFBundleName"] as AnyObject?
   return bundleName as! String
}


    


/*
 
 Optional(["BuildMachineOSBuild": 16A323, "DTPlatformName": iphonesimulator, "DTPlatformVersion": 10.2, "CFBundleDevelopmentRegion": en, "DTXcode": 0821, "CFBundleIdentifier": com.sunnyface.kRest, "DTCompiler": com.apple.compilers.llvm.clang.1_0, "CFBundleShortVersionString": 1.0, "CFBundleExecutable": kRest, "DTPlatformBuild": , "LSRequiresIPhoneOS": 1, "CFBundleVersion": 1, "UILaunchStoryboardName": LaunchScreen, "CFBundleSupportedPlatforms": <__NSArrayM 0x608000048280>(
 iPhoneSimulator
 )
 , "CFBundleInfoDictionaryVersion": 6.0, "DTSDKBuild": 14C89, "UIDeviceFamily": <__NSArrayM 0x608000048340>(
 1
 )
 , "CFBundleNumericVersion": 16809984, "NSAppTransportSecurity": {
 NSAllowsArbitraryLoads = 1;
 }, "UISupportedInterfaceOrientations": <__NSArrayM 0x6080000483a0>(
 UIInterfaceOrientationPortrait,
 UIInterfaceOrientationLandscapeLeft,
 UIInterfaceOrientationLandscapeRight
 )
 , "DTSDKName": iphonesimulator10.2, "UIMainStoryboardFile": Main, "DTXcodeBuild": 8C1002, "CFBundlePackageType": APPL, "CFBundleName": kRest, "UIRequiredDeviceCapabilities": <__NSArrayM 0x6080000482e0>(
 armv7
 )
 , "MinimumOSVersion": 10.2])
 1.0
 */
