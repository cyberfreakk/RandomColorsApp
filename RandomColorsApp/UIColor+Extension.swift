//
//  UIColor+Extension.swift
//  RandomColorsApp
//
//  Created by Arunesh Gupta on 17/10/23.
//

import UIKit


extension UIColor{
    
    static func random() -> UIColor{
        let color = UIColor(_colorLiteralRed: Float.random(in: 0...1), green: Float.random(in: 0...1), blue: Float.random(in: 0...1), alpha: 1)
        return color
    }
}
