//
//  Maths.swift
//  kHelpers
//
//  Created by sMac on 27/01/2017.
//  Copyright © 2017 Sunnyface.com. All rights reserved.
//

import Foundation


public extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
