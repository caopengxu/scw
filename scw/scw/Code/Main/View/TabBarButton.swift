//
//  TabBarButton.swift
//  scw
//
//  Created by cpx on 2017/7/6.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

@IBDesignable
class TabBarButton: UIButton {

    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.imageView?.centerX = __ScreenWidth / 4 / 2
        self.imageView?.y = 9
        
        self.titleLabel?.centerX = __ScreenWidth / 4 / 2
        self.titleLabel?.y = 33
    }
}
