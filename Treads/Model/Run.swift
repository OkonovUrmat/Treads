//
//  Run.swift
//  Treads
//
//  Created by Urmat on 7/28/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import Foundation
import RealmSwift

class Run: Object {
    dynamic public private(set) var id = ""
    dynamic public private(set) var date = NSDate()
    dynamic public private(set) var pace = 0
    dynamic public private(set) var distance = 0.0
    dynamic public private(set) var duration = 0.0
}
