//
//  RegisterController.swift
//  scw
//
//  Created by cpx on 2017/7/27.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    
    var judgeAgreement = true

    @IBOutlet weak var phoneNumberTextF: MyTextFieldFont!
    @IBOutlet weak var verificationTextF: MyTextFieldFont!
    @IBOutlet weak var passwordTextF: MyTextFieldFont!
    
    // MARK:=== viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK:=== 倒计时
    @IBAction func countDownBtnClick(_ sender: CountDownButton) {
        
        sender.startCountDown()
    }
    
    // MARK:=== 点击注册按钮
    @IBAction func registerBtnClick(_ sender: PXCustomButton) {
        
    }
    
    // MARK:=== 点击对勾按钮
    @IBAction func judgeAgreementBtnClick(_ sender: UIButton) {
        
        if sender.tag == 0
        {
            sender.tag = 1;
            sender.setImage(#imageLiteral(resourceName: "对勾灰色"), for: .normal)
            
            judgeAgreement = false
        }
        else
        {
            sender.tag = 0;
            sender.setImage(#imageLiteral(resourceName: "对勾红色"), for: .normal)
            
            judgeAgreement = true
        }
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
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if phoneNumberTextF == textField
        {
            if (phoneNumberTextF.text?.lengthOfBytes(using: String.Encoding.utf8))! >= __PhoneNumberLength
            {
                print("手机号格式不对")
                return false
            }
        }
        
        if passwordTextF == textField
        {
            if (passwordTextF.text?.lengthOfBytes(using: String.Encoding.utf8))! >= __PasswordLength
            {
                print("密码最多支持15位")
                return false
            }
        }
        
        return true
    }
}


