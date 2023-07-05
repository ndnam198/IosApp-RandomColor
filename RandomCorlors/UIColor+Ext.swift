//
//  UIColor+Ext.swift
//  RandomCorlors
//
//  Created by Nam Nguyen on 05/07/2023.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green:  CGFloat.random(in: 0...1),
                                  blue:  CGFloat.random(in: 0...1),
                                  alpha:  CGFloat.random(in: 0...1))
        return randomColor
    }
}
