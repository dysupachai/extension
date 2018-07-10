//
//  StringExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit

extension String{
    func substring(_ range: CountableRange<Int>) -> String {
        let idx1 = index(startIndex, offsetBy: max(0, range.lowerBound))
        let idx2 = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[idx1..<idx2])
    }
    
    func substring(from: Int) -> String {
        return substring(from..<self.count);
    }
    
    func substring(to: Int) -> String {
        return substring(0..<to);
    }
    func checkDoubleFormat()->String{
        let c:[String] = self.components(separatedBy: ".");
        
        if(c.count == 1){
            return c[0];
        }
        let length = (c[1].length >= 2) ? 2 : c[1].length
        return c[0] + "." + c[1].substring(0..<length)
    }
    func string2Date()->Date{
        let dateFormatter = DateFormatter()
        dateFormatter.initDateFormat()
        var value = self;
        value = value.replacingOccurrences(of: "T", with: " ");
        return dateFormatter.date(from: value)!
    }
    func string2DateTime()->Date{
        
        let formatter = DateFormatter()
        formatter.initDateTimeFormat()
        formatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
        var value = self;
        value = value.replacingOccurrences(of: "T", with: " ");
        var s:[String] = value.components(separatedBy: " ");
        let date = s[0];
        var t:[String] = s[1].components(separatedBy: ":");
        let newDateFormat:String = String(date +  " " + t[0] + ":" + t[1]+":00");
        
        return formatter.date(from: newDateFormat)!
    }
    func string2SystemDate()->Date{
        let formatter = DateFormatter()
        formatter.initDateTimeFormat()
        formatter.timeZone = TimeZone(identifier: "Asia/Bangkok")
        return formatter.date(from: self)!
    }
    func explodeStringDate()->String{
        var value = self;
        value = value.replacingOccurrences(of: "T", with: " ");
        return value;
    }
    func rightPadding(_ digit:Int)->String{
        let myString:String = "0000"+self;
        let length = myString.length;
        let startDigit:Int = length  - digit;
        return myString.substring(startDigit..<length)
    }
    func trimLast()->String{
        return self.substring(0..<(self.count-1))
    }
    var length: Int {
        get {
            return self.count
        }
    }
    func checkReturnDecimalEmpty()->String{
        if(self == ""){
            return "0";
        }
        return self;
    }
    func checkDoubleQuote()->String{
        var aString = self
        
        aString = aString.replacingOccurrences(of: "'", with: "\"", options: NSString.CompareOptions.literal, range: nil);
        
        
        aString = aString.replacingOccurrences(of: "\"", with: "\\\"", options: NSString.CompareOptions.literal, range: nil);
        
        
        
        return aString;
        
    }
    func toFormatJSON() -> String {
        let formatter = NumberFormatter()
        if let number = formatter.number(from: self) {
            return String(format: "%@", number);
        }
        var aString = self
        aString = aString.replacingOccurrences(of: "\"", with: "\\\"", options: NSString.CompareOptions.literal, range: nil)
        
        //aString = NSString.String
        
        //  NSString.stringWithUTF8String(aString)
        return "\"" + aString + "\"";
        
        
    }
    func toDouble()->Double{
        let value = self;
        if let dou:Double = Double(value){
            return dou;
        }
        return 0;
        //return Double(self)
    }
    
    func findString(_ search:String)->Bool{
        let search = String(cString: strstr(self.lowercased(), search.lowercased()));
        if(search == ""){
            return false;
        }
        return true;
    }
    func isContain(_ other: String) -> Bool{
        if self.contains(other) {
            return true
        }
        return false;
    }
    
    func containsIgnoreCase(_ other: String) -> Bool{
        
        let compare = other.lowercased();
        if self.lowercased().contains(compare) {
            return true;
        }
        return false;
    }
    func changeNullToEmpty() -> String {
        let string:String? = self;
        if let m = string {
            return m;
        }
        return "";
        
    }
    func isNullOrEmpty() -> Bool {
        let string:String? = self;
        if(string == nil || string == ""){
            return true;
        }
        return false;
    }
    var lastPathComponent: String {
        
        get {
            return (self as NSString).lastPathComponent
        }
    }
    var pathExtension: String {
        
        get {
            
            return (self as NSString).pathExtension
        }
    }
    var stringByDeletingLastPathComponent: String {
        
        get {
            
            return (self as NSString).deletingLastPathComponent
        }
    }
    var stringByDeletingPathExtension: String {
        
        get {
            
            return (self as NSString).deletingPathExtension
        }
    }
    var pathComponents: [String] {
        
        get {
            
            return (self as NSString).pathComponents
        }
    }
    
    func stringByAppendingPathComponent(_ path: String) -> String {
        
        let nsSt = self as NSString
        
        return nsSt.appendingPathComponent(path)
    }
    
    func stringByAppendingPathExtension(_ ext: String) -> String? {
        
        let nsSt = self as NSString
        
        return nsSt.appendingPathExtension(ext)
    }
    
}
