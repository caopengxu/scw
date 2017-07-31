//
//  CountDownButton.swift
//  scw
//
//  Created by cpx on 2017/7/31.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

@IBDesignable
class CountDownButton: MyButtonFont {
    
    // 边框、圆角
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
    // 时间长度(秒)
    @IBInspectable var count: Int = 0 {
        didSet{
            startCount = count
            originNum = count
        }
    }
    
    fileprivate var timer: Timer!
    fileprivate var startCount = 0
    fileprivate var originNum = 0
    
    
    // MARK:=== 开启倒计时
    func startCountDown()
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
     
        titleLabel?.textAlignment = NSTextAlignment.center
        backgroundColor = #colorLiteral(red: 0.6901960784, green: 0.6901960784, blue: 0.6901960784, alpha: 1)
        isUserInteractionEnabled = false
    }
    
    // MARK:=== 读秒
    @objc fileprivate func countDown()
    {
        startCount -= 1
        titleLabel?.text = "\(startCount)S"
        
        if startCount <= 0
        {
            isUserInteractionEnabled = true
            titleLabel?.text = "再次获取"
            backgroundColor = #colorLiteral(red: 0.7098039216, green: 0.05098039216, blue: 0.05098039216, alpha: 1)
            startCount = originNum
            
            if timer == nil
            {
                return
            }
            timer.invalidate()
            timer = nil
        }
    }
    
    deinit {
        if timer == nil
        {
            return
        }
        timer.invalidate()
        timer = nil
    }
}


