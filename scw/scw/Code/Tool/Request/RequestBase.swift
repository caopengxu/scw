//
//  RequestBase.swift
//  scw
//
//  Created by cpx on 2017/10/9.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit
import Alamofire

class RequestBase: NSObject {
    
    
    static func post() {
        let requestUrl = "http://47.93.55.119:8626/garfield/member/api/v1/memberLogin"
        let parameters = ["username":"18232104146", "password":"123456", "grant_type":"password", "scope":"select", "client_id":"scw_client", "client_secret":"123456"]
        let headers: HTTPHeaders = ["clientType":"iOS", "serverVersion":"v1.1"]
        
        Alamofire.request(requestUrl, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            
            switch response.result {
            case .success(let json):
                
                if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                    print("Data: \(utf8Text)")
                }

            case .failure(let error):
                
                if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                    print("Data: \(utf8Text)")
                }
            }
        }
    }
    
    
    
    
}


