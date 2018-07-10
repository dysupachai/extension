//
//  DoubleExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit

extension Double {
    func roundToPlaces(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return floor(self * divisor) / divisor
    }
    func toCurrencyFormat()->String{
        let v = self as NSNumber;
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        formatter.currencySymbol = "";
        return formatter.string(from: v)!;
        
    }
    func toString() -> String {
        return String(format: "%.2f",self)
    }
}
