//
//  RequestBase.swift
//  scw
//
//  Created by cpx on 2017/10/9.
//  Copyright © 2017年 scw. All rights reserved.
//

import UIKit
import Alamofire
import Moya

class RequestBase: NSObject {
    
    static func get() {
        
        let parameters = ["username":"18232104146", "password":"123456", "grant_type":"password", "scope":"select", "client_id":"scw_client", "client_secret":"123456"]
        let headers: HTTPHeaders = ["clientType":"iOS", "serverVersion":"v1.1"]
        
//        let provider = MoyaProvider<NetAPIManager>()
//        provider.request(.zen) { result in
//            switch result {
//            case let .success(moyaResponse):
//                let data = moyaResponse.data
//                let statusCode = moyaResponse.statusCode
//            // do something with the response data or statusCode
//            case let .failure(error):
//                // this means there was a network failure - either the request
//                // wasn't sent (connectivity), or no response was received (server
//                // timed out).  If the server responds with a 4xx or 5xx error, that
//                // will be sent as a ".success"-ful response.
//            }
//        }
    }
    
    static func post() {
        
        let parameters = ["username":"18232104146", "password":"123456", "grant_type":"password", "scope":"select", "client_id":"scw_client", "client_secret":"123456"]
        let headers: HTTPHeaders = ["clientType":"iOS", "serverVersion":"v1.1"]
        
        Alamofire.request(SC_Login, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            
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


