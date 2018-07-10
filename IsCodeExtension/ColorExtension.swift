//
//  ColorExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    func lighterColor(_ percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 + percent));
    }
    
    func darkerColor(_ percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 - percent));
    }
    func colorWithBrightnessFactor(_ factor: CGFloat) -> UIColor {
        var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self;
        }
    }
    class func getPrimaryColor()->UIColor{
        return UIColor.colorWithHexString("f09538");
    }
    class func getPrimaryBar()->UIColor{
        return UIColor.colorWithHexString("E74C3C");
    }
    class func getMargentaColor()->UIColor{
        return UIColor.colorWithHexString("F44336");
    }
    class func getLabelColor()->UIColor{
        return UIColor.colorWithHexString("555555");
    }
    class func getTextGrayColor()->UIColor{
        return UIColor.colorWithHexString("999999");
    }
    class func getColorBlue()->UIColor{
        return UIColor.colorWithHexString("5db2ff");
    }
    class func getDarkBlue()->UIColor{
        return UIColor.colorWithHexString("007AFF");
    }
    
    class func getColorOrange()->UIColor{
        return UIColor.colorWithHexString("5db2ff");
    }
    class func getDarkOrange()->UIColor{
        return UIColor.colorWithHexString("ed4e2a");
    }
    class func getSoftBlue()->UIColor{
        return UIColor.colorWithHexString("03A9F4");
    }
    class func getColorGreen()->UIColor{
        return UIColor.colorWithHexString("8BC34A");
    }
    class func getSubmitColor(){
        _ = UIColor.colorWithHexString("3e7dca");
    }
    
    class func getInfoColor()->UIColor{
        return UIColor.colorWithHexString("E75B8D");
        //return UIColor.colorWithHexString("007AFF");
    }
    class func getColorIndigo()->UIColor{
        return UIColor.colorWithHexString("3F51B5");
        //return UIColor.colorWithHexString("007AFF");
    }
    
    class func getSubmitColor2(){
        _ = UIColor.colorWithHexString("3e7dca");
    }
    class func colorWithHexString (_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: (NSCharacterSet.whitespacesAndNewlines as NSCharacterSet) as CharacterSet).uppercased()
        
        
        
        if (cString.hasPrefix("#")) {
            cString =  cString.substring(from: 1);
        }
        if (cString.count != 6) {
            return UIColor.gray
        }
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
