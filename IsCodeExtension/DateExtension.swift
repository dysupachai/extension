//
//  DateExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit

extension Date{
    
    func addDay(_ numOfDay:Int)->Date{
        return (Calendar.current as NSCalendar).date(byAdding: NSCalendar.Unit.day, value: numOfDay, to: Date(), options: [])!;
    }
    func isGreatherThan()->Bool{
        var isGreater = false;
        if self.compare(Date()) == ComparisonResult.orderedDescending {
            isGreater = true;
        }
        return isGreater;
        
    }
    func getDateInterVal(_ numOfDate:Int)->String{
        let dateStr          = Date().dateFormatToString()
        let currDate:Date = dateStr.string2Date();
        let interval = TimeInterval(60 * 60 * 24 * numOfDate);
        return currDate.addingTimeInterval(interval * -1).dateFormatToString()
    }
    func convertToSystemDateFormat()->String{
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        let dateFormatter:DateFormatter = DateFormatter();
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm";
        dateFormatter.calendar = calendar
        return dateFormatter.string(from: self);
    }
    func getCurrentDateTime()->Date{
        let dateFormatter:DateFormatter = DateFormatter();
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm";
        let dateString = dateFormatter.string(from: self);
        return dateFormatter.date(from: dateString)!;
    }
    func date2String()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.initDateTimeFormat()
        return formatter.string(from: date)
    }
    func getCurrentMonth()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.getMonthName();
        return formatter.string(from: date)
    }
    func getCurrentYear()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.getCurentYear()
        return formatter.string(from: date)
    }
    func dateTimeToString()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.initDateTimeFormat()
        return formatter.string(from: date)
    }
    func dateFormatToString()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.initDateFormat();
        return formatter.string(from: date)
    }
    func getThaiDateFormat()->String{
        let date = self;
        let formatter = DateFormatter()
        formatter.initDateThai();
        return formatter.string(from: date)
    }
    func currentDate()->Date{
        let dString:String = Date().date2String();
        let formatter = DateFormatter()
        formatter.initDateFormat();
        return formatter.date(from: dString)!;
    }
    func getCurrentDate()->Date{
        let dString:String = Date().dateFormatToString()
        let formatter = DateFormatter()
        formatter.initDateFormat()
        return formatter.date(from: dString)!;
    }
    func changeToShortDate()->Date{
        let dString:String = self.dateFormatToString()
        let formatter = DateFormatter()
        formatter.initDateFormat()
        return formatter.date(from: dString)!;
    }
    func currentDateAndTime()->Date{
        let dString:String = Date().date2String();
        let formatter = DateFormatter()
        formatter.initDateTimeFormat()
        return formatter.date(from: dString)!;
    }
    func getFirstDayOfNextMonth()->Date{
        var month:Int = (Calendar.current as NSCalendar).components(NSCalendar.Unit.month, from: Date()).month!
        var year:Int = (Calendar.current as NSCalendar).components(NSCalendar.Unit.year, from: Date()).year!
        
        month += 1;
        if(month == 13){
            month = 1;
            year += 1;
        }
        let carlenda = Calendar(identifier: Calendar.Identifier.gregorian);
        let string = NSString(format: "%d-%d-01", year,month);
        let formatter = DateFormatter()
        formatter.calendar = carlenda;
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.date(from: string as String)!;
        
    }
    init?(jsonDate: String) {
        
        let prefix = "/Date("
        let suffix = ")/"
        
        // Check for correct format:
        guard jsonDate.hasPrefix(prefix) && jsonDate.hasSuffix(suffix) else { return nil }
        
        // Extract the number as a string:
        let from = jsonDate.index(jsonDate.startIndex, offsetBy: prefix.count)
        let to = jsonDate.index(jsonDate.endIndex, offsetBy: -suffix.count)
        
        // Convert milliseconds to double
        guard let milliSeconds = Double(jsonDate[from ..< to]) else { return nil }
        // Create NSDate with this UNIX timestamp
        self.init(timeIntervalSince1970: milliSeconds/1000.0)
    }
}
