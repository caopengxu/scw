//
//  PXCustomImageView.swift
//  scw
//
//  Created by cpx on 2017/7/15.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

@IBDesignable
class PXCustomImageView: UIImageView {

    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor() {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }
    }

}
