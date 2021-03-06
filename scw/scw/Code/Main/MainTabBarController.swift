
//
//  MainTabBarController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    // MARK:=== 界面显示前后
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        for child in self.tabBar.subviews
        {
            if (child .isKind(of: UIControl.classForCoder()))
            {
                child.isHidden = true
            }
        }
    }
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置TabBar
        let nib = UINib.init(nibName: "TabBarView", bundle: Bundle.main)
        let tabBarView = nib.instantiate(withOwner: nib, options: nil)[0] as! TabBarView
        tabBarView.frame = CGRect.init(x: 0, y: 0, width: __ScreenWidth, height: 49)
        
        tabBarView.setUp()
        tabBarView.itemClickBack = { (num) in
            
            UserDefaults.standard.set(NSNumber.init(value: 0), forKey: "CONTENT_OFF_SET")
            UserDefaults.standard.synchronize()
            self.selectedIndex = num
        }
        
        self.tabBar.addSubview(tabBarView)
    }
}


//extension MainTabBarController
//{
//    public func setupChildControllers()
//    {
//        let array = [
//            ["clsName":"Home", "title":"首页", "imageName":"one"],
//            ["clsName":"Class", "title":"分类", "imageName":"two"],
//            ["clsName":"ShoppingCart", "title":"购物车", "imageName":"three"],
//            ["clsName":"Mine", "title":"我的", "imageName":"four"]
//        ]
//        
//        var arrayM = [UIViewController]()
//        for dict in array
//        {
//            arrayM.append(controller(dict: dict))
//        }
//        
//        viewControllers = arrayM
//    }
//    
//    
//    private func controller(dict:[String: String]) -> UIViewController
//    {
//        guard let clsName = dict["clsName"],
//            let title = dict["title"],
//            let imageName = dict["imageName"]
////            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
//        else
//        {
//            return UIViewController()
//        }
//        
//        let storyboard = UIStoryboard.init(name: clsName, bundle: nil)
//        let vc = storyboard.instantiateInitialViewController()!
//        vc.title = title
//        vc.tabBarItem.image = UIImage(named:imageName)
//        vc.tabBarItem.selectedImage = UIImage(named: imageName + "1")
//        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : #colorLiteral(red: 0.7602152824, green: 0.7601925135, blue: 0.7602053881, alpha: 1)], for: .highlighted)
//        
//        return MainNavController(rootViewController: vc);
//    }
//    
//    
////    private func setupComposeBtn()
////    {
////        tabBar.addSubview(composeBtn)
////        
////        composeBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5, blue: 0, alpha: 1)
////        
////        let count = CGFloat(childViewControllers.count)
////        let w = tabBar.bounds.width / count - 1
////        
////        composeBtn.frame = tabBar.bounds.insetBy(dx: 2 * w, dy: 0)
////        
////        composeBtn.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
////    }
//}


