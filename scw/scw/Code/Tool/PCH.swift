//
//  PCH.swift
//  scw
//
//  Created by cpx on 2017/7/27.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

let __PhoneNumberLength = 11  // 允许输入手机号码的长度
let __PasswordLength = 15  // 允许输入密码的最大长度

let __KeyWindow = UIApplication.shared.keyWindow
let __ScreenBounds = UIScreen.main.bounds
let __ScreenWidth = UIScreen.main.bounds.width
let __ScreenHeight = UIScreen.main.bounds.height

// 根据屏幕变大字体变大（内联函数）
func fontAdd(_ font : CGFloat) -> CGFloat {
    
    var font = font
    if __ScreenWidth == 375
    {
        font += 1
    }
    else if __ScreenWidth == 414
    {
        font += 2
    }
    return font
}

// 颜色
let __ColorPlaceholder = #colorLiteral(red: 0.6274509804, green: 0.6274509804, blue: 0.6274509804, alpha: 1)
let __ColorRed = #colorLiteral(red: 0.9490196078, green: 0.1882352941, blue: 0.1882352941, alpha: 1)
let __ColorBackground = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)


