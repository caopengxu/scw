//
//  RegisterController.swift
//  scw
//
//  Created by cpx on 2017/7/27.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var phoneNumberTextF: UITextField!
    @IBOutlet weak var verificationTextF: UITextField!
    @IBOutlet weak var passwordTextF: UITextField!
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    // MARK:=== 点击注册按钮
    @IBAction func registerBtnClick(_ sender: PXCustomButton) {
        
    }
    
    // MARK:=== 点击对勾按钮
    @IBAction func judgeAgreementBtnClick(_ sender: UIButton) {
        
    }
    
    // MARK:=== 点击用户协议按钮
    @IBAction func agreementBtnClick(_ sender: UIButton) {
        
    }
    
    // MARK:=== 点击返回按钮
    @IBAction func returnBtnClick(_ sender: PXCustomButton) {
        view.endEditing(true)
        
        navigationController?.popViewController(animated: true)
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
extension RegisterController: UITextFieldDelegate {
    
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


