
//
//  MainTabBarController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildControllers()
    }

    // FIXME:撰写微博没有实现
    @objc private func composeStatus()
    {}
    
    private lazy var composeBtn: UIButton = UIButton.init()
}



extension MainTabBarController
{
    public func setupChildControllers()
    {
        let array = [
            ["clsName":"Home", "title":"首页", "imageName":"one"],
            ["clsName":"Class", "title":"分类", "imageName":"two"],
//            ["clsName":"UIViewController"],
            ["clsName":"ShoppingCart", "title":"购物车", "imageName":"three"],
            ["clsName":"Mine", "title":"我的", "imageName":"four"]
        ]
        
        var arrayM = [UIViewController]()
        for dict in array
        {
            arrayM.append(controller(dict: dict))
        }
        
        viewControllers = arrayM
    }
    
    
    private func controller(dict:[String: String]) -> UIViewController
    {
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"]
//            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else
        {
            return UIViewController()
        }
        
        let storyboard = UIStoryboard.init(name: clsName, bundle: nil)
        let vc = storyboard.instantiateInitialViewController()
        vc?.title = title
        vc?.tabBarItem.image = UIImage(named:imageName)
        vc?.tabBarItem.selectedImage = UIImage(named: imageName + "1")
        vc?.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : #colorLiteral(red: 0.7602152824, green: 0.7601925135, blue: 0.7602053881, alpha: 1)], for: .highlighted)
        
        return vc!
    }
    
    
//    private func setupComposeBtn()
//    {
//        tabBar.addSubview(composeBtn)
//        
//        composeBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5, blue: 0, alpha: 1)
//        
//        let count = CGFloat(childViewControllers.count)
//        let w = tabBar.bounds.width / count - 1
//        
//        composeBtn.frame = tabBar.bounds.insetBy(dx: 2 * w, dy: 0)
//        
//        composeBtn.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
//    }
}


