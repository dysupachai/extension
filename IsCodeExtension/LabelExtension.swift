//
//  LabelExtension.swift
//  IsCodeExtension
//
//  Created by ISCODE on 10/7/18.
//  Copyright © 2018 Iscode. All rights reserved.
//

import UIKit
extension UILabel{
    func setMultiLine(){
        self.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.numberOfLines = 0
        self.sizeToFit();
        let f2:CGRect = self.frame;
        self.frame = f2;
        
        //self.backgroundColor = UIColor.redColor()
        
    }
}
