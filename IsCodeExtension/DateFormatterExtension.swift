//
//  DateFormatterExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit
extension DateFormatter{
    func initDateFormatWithSlash(){
        self.initCalendar();
        self.dateFormat = "dd/MM/yyyy"
    }
    func initDateFormat(){
        self.initCalendar();
        self.dateFormat = "yyyy-MM-dd"
    }
    func initDateThai(){
        self.initCalendar();
        self.dateFormat = "dd/MM/yyyy"
    }
    func initDateTimeFormat(){
        self.initCalendar();
        self.dateFormat = "yyyy-MM-dd HH:mm:ss"
    }
    func getMonthName(){
        self.initCalendar();
        self.dateFormat = "MMMM"
    }
    func getCurentYear(){
        self.initCalendar();
        self.dateFormat = "yyyy"
    }
    fileprivate func initCalendar(){
        self.calendar = Calendar(identifier: Calendar.Identifier.gregorian);
        self.locale = Locale(identifier: "en_US_POSIX")
    }
}
