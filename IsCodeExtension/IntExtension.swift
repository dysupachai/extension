//
//  IntExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit
extension Int {
    func toString() -> String {
        return String(self);
    }
    func toNumberFormat()->String{
        
        
        
        
        let format:NumberFormatter = NumberFormatter();
        format.numberStyle = NumberFormatter.Style.decimal;
        format.maximumFractionDigits = 5;
        format.currencySymbol = "";
        return format.string(from: NSNumber(value: self))!;
        //return format.string(from: NSNumber(self))!
        
    }
}
extension Int64 {
    func toString() -> String {
        
        return String(format: "%d",self)
    }
    func toNumberFormat()->String{
        
        
        let format:NumberFormatter = NumberFormatter();
        format.numberStyle = NumberFormatter.Style.decimal;
        format.maximumFractionDigits = 5;
        format.currencySymbol = "";
        return format.string(from: NSNumber(value: self as Int64))! // "$123.44"
        //return String(format: "%.2f",self)
        
    }
}
