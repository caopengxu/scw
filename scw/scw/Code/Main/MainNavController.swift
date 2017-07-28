//
//  MainNavController.swift
//  scw
//
//  Created by cpx on 2017/6/19.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class MainNavController: UINavigationController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactivePopGestureRecognizer?.isEnabled = false
        
        let target = interactivePopGestureRecognizer?.delegate
        let backGestureSelector = NSSelectorFromString("handleNavigationTransition:")
        let pan = UIPanGestureRecognizer.init(target: target, action: backGestureSelector)
        view.addGestureRecognizer(pan)
        pan.delegate = self
        
    }
    
    
    // MARK:=== 重写push事件
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 1
        {
            viewController.hidesBottomBarWhenPushed = true
            interactivePopGestureRecognizer?.delegate = self
        }
        
        super.pushViewController(viewController, animated: true)
    }
}


extension MainNavController: UIGestureRecognizerDelegate {

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        return childViewControllers.count > 1
    }
}


