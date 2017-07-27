//
//  SignController.swift
//  scw
//
//  Created by cpx on 2017/7/27.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class SignController: UIViewController {

    @IBOutlet weak var phoneNumberTextF: UITextField!
    @IBOutlet weak var passwordTextF: UITextField!
    
    // MARK:=== 界面显示前后
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    
    
    // MARK:=== 点击登录按钮
    @IBAction func loginBtnClick(_ sender: PXCustomButton) {
        
    }
    
    // MARK:=== 点击我要注册按钮
    @IBAction func registerBtnClick(_ sender: MyButtonFont) {
        view.endEditing(true)
        
        let storyboard = UIStoryboard.init(name: "Register", bundle: nil)
        let main = storyboard.instantiateInitialViewController()
        navigationController?.pushViewController(main!, animated: true)
    }
    
    // MARK:=== 点击忘记密码按钮
    @IBAction func forgetPassWordBtnClick(_ sender: MyButtonFont) {
        view.endEditing(true)
        
        let storyboard = UIStoryboard.init(name: "ForgetPassWord", bundle: nil)
        let main = storyboard.instantiateInitialViewController()
        navigationController?.pushViewController(main!, animated: true)
    }
    
    
    
    // 点击其他地方收起键盘
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK:=== 隐藏状态栏
    override var prefersStatusBarHidden: Bool {
        return true
    }
}


// MARK:=== <UITextFieldDelegate>
extension SignController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.5) { 
            
            self.view.frame = CGRect.init(x: 0, y: -100, width: __ScreenWidth, height: __ScreenHeight)
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.3) {
            
            self.view.frame = CGRect.init(x: 0, y: 0, width: __ScreenWidth, height: __ScreenHeight)
        }
    }
}


