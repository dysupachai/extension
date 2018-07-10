//
//  UIViewExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit

extension UIView {
    
    class func loadFromNibNamed(_ nibNamed: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    func setLeft(_ left:CGFloat){
        var f1:CGRect =  self.frame;
        f1.origin.x = left;
        self.frame = f1;
    }
    func setTop(_ top:CGFloat){
        var f1:CGRect =  self.frame;
        f1.origin.y = top;
        self.frame = f1;
    }
    
    func captureView() -> UIImage {
        //self.backgroundColor = UIColor.redColor()
        //UIGraphicsBeginImageContextWithOptions(
        
        
        
        let layer = UIApplication.shared.keyWindow?.layer
        let scale = UIScreen.main.scale
        let size:CGSize! = layer?.frame.size;
        UIGraphicsBeginImageContextWithOptions(size, false, scale);
        
        layer?.render(in: UIGraphicsGetCurrentContext()!)
        let screenshot = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return screenshot!;
        /*
         
         var size = CGSizeMake(self.frame.size.width , self.frame.size.height);
         
         UIGraphicsBeginImageContextWithOptions(size, false, 0)
         
         drawViewHierarchyInRect(self.bounds, afterScreenUpdates: true)
         
         // old style: layer.renderInContext(UIGraphicsGetCurrentContext())
         
         let image = UIGraphicsGetImageFromCurrentImageContext()
         UIGraphicsEndImageContext()
         return image*/
    }
    
}
