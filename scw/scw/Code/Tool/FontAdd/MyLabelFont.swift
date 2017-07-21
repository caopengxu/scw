//
//  MyLabelFont.swift
//  scw
//
//  Created by cpx on 2017/7/15.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class MyLabelFont: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        font = UIFont.systemFont(ofSize: font.pointSize)
    }

    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        font = UIFont.systemFont(ofSize: font.pointSize)
    }
}
