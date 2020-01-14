//
//  EMDateTimeAlertPicker.swift
//  EMDateTimeAlertPickerDemo
//
//  Created by Sahan Ravindu on 1/9/20.
//  Copyright © 2020 Sahan Ravindu. All rights reserved.
//

import Foundation
import UIKit

public class EMDateTimeAlertPicker: UIViewController {
    
    public var selectedDate : Date!
    public var hour : Int!
    public var minuts: Int!
    public var seconds: Int!
    public var nanoseconds: Int!
    public var time : String!
    public var dateModel: EMDateTime!
    public let rootController = UIApplication.shared.keyWindow?.rootViewController
    
    public static let shared = EMDateTimeAlertPicker()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func setDatePicker( minDate: Date? = nil, maxDate: Date? = nil, type: UIDatePicker.Mode = .dateAndTime, actionType: DatePickerActions = .setRemove, completion: @escaping completionHandler) {
        
        let myDatePicker: UIDatePicker = UIDatePicker()
        let calendar = Calendar.current
        
        if let _minDate = minDate {
            myDatePicker.minimumDate = _minDate
        }
        if let _maxDate = maxDate {
            myDatePicker.minimumDate = _maxDate
        }
        
        myDatePicker.datePickerMode = type
        myDatePicker.frame = CGRect(x: 8, y: 16, width: 256, height: 200)
        
        let alertController = UIAlertController(title: "Select Date\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .alert)
        alertController.view.addSubview(myDatePicker)
        
        
        let selectAction = UIAlertAction(title: "Set", style: .default, handler: { _ in
            print("Selected Date: \(myDatePicker.date)")
            
            
            self.selectedDate = myDatePicker.date
            self.hour = calendar.component(.hour, from: self.selectedDate)
            self.minuts = calendar.component(.minute, from: self.selectedDate)
            self.seconds = calendar.component(.second, from: self.selectedDate)
            self.nanoseconds = calendar.component(.nanosecond, from: self.selectedDate)
            self.time = "\(self.hour ?? 00):\(self.minuts ?? 00):\(self.seconds ?? 00)"
            
            self.dateModel = EMDateTime(date: self.selectedDate, time: self.time, hour: self.hour, minut: self.minuts, seconds: self.seconds, nanoseconds: self.nanoseconds)
            
            print("Hour", self.hour)
            print("Minut", self.minuts)
            print("Seconds", self.seconds)
            print("Nanosec", self.nanoseconds)
            print("ALL DATA", self.dateModel)
            completion(self.dateModel, self.selectedDate, self.time, self.hour, self.minuts, self.seconds, self.nanoseconds)
            
        })
        
        let removeAction = UIAlertAction(title: "Remove", style: .destructive, handler: { _ in
            print("Remove date")
            completion(nil, nil, nil, nil, nil, nil, nil )
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(selectAction)
        alertController.addAction(removeAction)
        alertController.addAction(cancelAction)
        
        print("EXCEPTION", rootController)
        rootController!.present(alertController, animated: true, completion:{})
        
    }

}

public enum DatePickerActions: String {
    case set
    case setRemove
}

public typealias completionHandler = (_ data: EMDateTime?, _ date: Date? , _ time: String?, _ hour: Int?, _ minut: Int?, _ seconds: Int?, _ nanoseconds: Int? ) -> ()
