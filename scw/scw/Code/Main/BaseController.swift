//
//  BaseController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    /// 懒加载，自定义导航条
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 320, height: 64))
    lazy var navItem = UINavigationItem()
    
    /// 重写title的didSet
    override var title: String?
    {
        didSet
        {
            navItem.title = title
        }
    }
    
    @objc private func popToParent ()
    {
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    /// viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}



// MARK: - 设置界面
extension BaseController
{
    func setupUI()
    {
        view.backgroundColor = #colorLiteral(red: 0.2856909931, green: 0, blue: 0.9589199424, alpha: 1)
        
        view.addSubview(navigationBar)
        
        navigationBar.items = [navItem]
        
//        navItem.leftBarButtonItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(popToParent))
    }
    
    
}


