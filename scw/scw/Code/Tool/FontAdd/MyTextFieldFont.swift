//
//  MyTextFieldFont.swift
//  scw
//
//  Created by cpx on 2017/7/29.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

@IBDesignable
class MyTextFieldFont: UITextField {

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        font = UIFont.systemFont(ofSize: fontAdd((font?.pointSize)!))
    }
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        font = UIFont.systemFont(ofSize: fontAdd((font?.pointSize)!))
    }

    @IBInspectable var attPh: String = String() {
        didSet {
            let dic = NSMutableDictionary()
            dic[NSFontAttributeName] = UIFont.systemFont(ofSize: fontAdd(14))
            dic[NSForegroundColorAttributeName] = __ColorPlaceholder
            let phoneNumber = NSAttributedString.init(string: attPh, attributes: dic as? [String : Any])
            attributedPlaceholder = phoneNumber
        }
    }
    
}
