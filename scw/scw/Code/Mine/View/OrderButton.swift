//
//  OrderButton.swift
//  scw
//
//  Created by cpx on 2017/7/21.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

@IBDesignable
class OrderButton: UIButton {

    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.imageView?.centerX = __ScreenWidth / 5 / 2
        self.imageView?.y = 9
        
        self.titleLabel?.centerX = __ScreenWidth / 5 / 2
        self.titleLabel?.y = 32
    }
}
