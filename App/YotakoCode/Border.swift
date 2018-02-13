//
//  Border.swift
//  singleViewApp
//
//  Created by Keuha on 04/01/2018.
//  Copyright © 2018 Yotako S.A. All rights reserved.
//

import Foundation
import Foundation
import UIKit
@IBDesignable extension UIView {
    
    @IBInspectable var addBorderTop: CGFloat {
        set {
            addBorderUtility(0, y: 0, width: frame.width, height: newValue, color: layer.borderColor)
        }
        get {
            return 0
        }
    }
    
    @IBInspectable var addBorderBottom: CGFloat {
        set {
            addBorderUtility(0, y: frame.height - newValue, width: frame.width, height: newValue, color: layer.borderColor)

        }
        get {
            return 0
        }
    }
    
    @IBInspectable var addBorderLeft: CGFloat {
        set {
            addBorderUtility(0, y: 0, width: newValue, height: frame.height, color: layer.borderColor)
        }
        get {
            return 0
        }
    }
    
    @IBInspectable var addBorderRight: CGFloat {
        set {
            addBorderUtility(frame.width - newValue, y: 0, width: newValue, height: frame.height, color:  layer.borderColor)
        }
        get {
            return 0
        }
    }
    
    private func addBorderUtility(_ x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: CGColor?) {
        let border = CALayer()
        border.backgroundColor = color
        border.frame = CGRect(x: x, y: y, width: width, height: height)
        layer.addSublayer(border)
    }
}
