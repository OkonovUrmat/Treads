//
//  Extensions.swift
//  Treads
//
//  Created by Urmat on 6/17/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import Foundation

extension Double {
    func metersToMiles(places: Int) -> Double {
        let divisor = pow(10.0,Double(places))
        return ((self / 1609.34) * divisor).rounded() / divisor
    }
}