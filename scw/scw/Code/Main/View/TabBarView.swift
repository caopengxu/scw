//
//  TabBarView.swift
//  scw
//
//  Created by cpx on 2017/7/6.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class TabBarView: UIView {

    var itemClickBack: ((NSInteger) -> Void)?
    
    var isHome = false
    var isClass = false
    var isShoppingCart = false
    var isMine = false
    
    @IBOutlet weak var homeBtn: TabBarButton!
    @IBOutlet weak var classBtn: TabBarButton!
    @IBOutlet weak var shoppingCartBtn: TabBarButton!
    @IBOutlet weak var mineBtn: TabBarButton!
 
    
    // MARK:=== 初始化
    func setUp()
    {
        btnClick(homeBtn)
    }
    
    
    // MARK:=== 按钮点击
    @IBAction func btnClick(_ sender: TabBarButton)
    {
        if let itemClickBack = itemClickBack {
            itemClickBack(sender.tag)
        }
        
        if (sender.tag == 0)
        {
            if (!isHome)
            {
                isHome = true;
                
                isClass = false;
                isShoppingCart = false;
                isMine = false;
                classBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 1)
        {
            if (!isClass)
            {
                isClass = true;
                
                isHome = false;
                isShoppingCart = false;
                isMine = false;
                homeBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 2)
        {
            if (!isShoppingCart)
            {
                isShoppingCart = true;
                
                isClass = false;
                isHome = false;
                isMine = false;
                classBtn.isSelected = sender.isSelected;
                homeBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 3)
        {
            if (!isMine)
            {
                isMine = true;
                
                isClass = false;
                isShoppingCart = false;
                isHome = false;
                classBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                homeBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
    }
}


