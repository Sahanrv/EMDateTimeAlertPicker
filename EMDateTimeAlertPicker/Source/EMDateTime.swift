//
//  EMDateTime.swift
//  EMDateTimeAlertPicker
//
//  Created by Sahan Ravindu on 1/14/20.
//  Copyright © 2020 Sahan Ravindu. All rights reserved.
//

import UIKit

public struct EMDateTime {
    var date: Date?
    var time: String?
    var hour: Int?
    var minut: Int?
    var seconds: Int?
    var nanoseconds: Int?
    
    init(date: Date?, time: String?, hour: Int?, minut: Int?, seconds: Int?, nanoseconds: Int?){
         self.date = date
         self.time = time
         self.hour = hour
         self.minut = minut
         self.seconds = seconds
         self.nanoseconds = nanoseconds
    }
}
