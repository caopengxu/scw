//
//  MyButtonFont.swift
//  scw
//
//  Created by cpx on 2017/7/15.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class MyButtonFont: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        titleLabel?.font = UIFont.systemFont(ofSize: (titleLabel?.font.pointSize)!)
    }
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        titleLabel?.font = UIFont.systemFont(ofSize: (titleLabel?.font.pointSize)!)
    }
}
