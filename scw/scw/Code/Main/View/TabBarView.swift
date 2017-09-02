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
//    var itemClickBack : (() ->())?
    
    var _judgeHome = false
    var _judgeClass = false
    var _judgeShoppingCart = false
    var _judgeMine = false
    
    @IBOutlet weak var homeBtn: TabBarButton!
    @IBOutlet weak var classBtn: TabBarButton!
    @IBOutlet weak var shoppingCartBtn: TabBarButton!
    @IBOutlet weak var mineBtn: TabBarButton!
    
    func setUp()
    {
        btnClick(homeBtn)
    }
    
    
    @IBAction func btnClick(_ sender: TabBarButton)
    {
        itemClickBack!(sender.tag)
        
        if (sender.tag == 0)
        {
            if (!_judgeHome)
            {
                _judgeHome = true;
                
                _judgeClass = false;
                _judgeShoppingCart = false;
                _judgeMine = false;
                classBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 1)
        {
            if (!_judgeClass)
            {
                _judgeClass = true;
                
                _judgeHome = false;
                _judgeShoppingCart = false;
                _judgeMine = false;
                homeBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 2)
        {
            if (!_judgeShoppingCart)
            {
                _judgeShoppingCart = true;
                
                _judgeClass = false;
                _judgeHome = false;
                _judgeMine = false;
                classBtn.isSelected = sender.isSelected;
                homeBtn.isSelected = sender.isSelected;
                mineBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
        else if (sender.tag == 3)
        {
            if (!_judgeMine)
            {
                _judgeMine = true;
                
                _judgeClass = false;
                _judgeShoppingCart = false;
                _judgeHome = false;
                classBtn.isSelected = sender.isSelected;
                shoppingCartBtn.isSelected = sender.isSelected;
                homeBtn.isSelected = sender.isSelected;
                sender.isSelected = !sender.isSelected;
            }
        }
    }
}


