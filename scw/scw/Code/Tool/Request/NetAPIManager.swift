//
//  NetAPIManager.swift
//  scw
//
//  Created by cpx on 2017/10/10.
//  Copyright © 2017年 scw. All rights reserved.
//

import Foundation
import UIKit
import Moya

enum NetAPIManager {
    case Show
    case upload(bodyData: Data)
    case download
    case request(isTouch: Bool, body: Dictionary<String, Any>? ,isShow: Bool)
}


extension NetAPIManager {
    var baseURL: URL {
        switch self {
        case .request(_, _, _):
            return URL(string: "https://www.pmphmall.com")!
        default:
            return URL(string: "https://httpbin.org")!
        }
    }
    
    var path: String {
        switch self {
        case .Show:
            return ""
        case .upload(_):
            return ""
        case .request(_, _, _):
            return "/app/json.do"
        case .download:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .Show:
            return .get
        case .request(_, _, _):
            return .post
        default:
            return .post
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .Show:
            return nil
        case .request(_, _, _):
            return ["msg": "H4sIAAAAAAAAA11SSZJFIQi7EqPAEgTvf6TP62W7sMoSQhKSWDrs6ZUKVWogLwYV7RjHFBZJlNlzloN6LVqID4a+puxqRdUKVNLwE1TRcZIC/fjF2rPotuXmb84r1gMXbiASZIZbhQdKEewJlz41znDkujCHuQU3dU7G4/PmVRnwArMLXukBv0J23XVahNO3VX35wlgce6TLUzzgPQJFuHngAczl6VhaNXpmRLxJBlMml6gdLWiXxTdO7I+iEyC7XuTirCQXOk4dotgArgkH/InxVjfNTnE/uY46++hyAiLFuFL4cv1Z8WH5DgB2GnvFXMh5gm53Tr13vqqrEYtcdXfkNsMwKB+9sAQ77grNJmquFWOhfXA/DELlMB0KKFtHOc/ronj1ml+Z7qas82L3VWiCVQ+HEitjTVzoFw8RisFN/jJxBY4awvq427McXqnyrfCsl7oeEU6wYgW9yJtj1lOkx0ELL5Fw4z071NaVzRA9ebxWXkFyothgbB445cpRmTC+//F73r1kOyQ3lTpec12XNDR00nnq5/YmJItW3+w1z27lSOLqgVctrxG4xdL9WVPdkH1tkiZ/pUKBGhADAAA="]
        default:
            return nil
        }
    }
    
    var sampleData: Data {
        return "{}".data(using: String.Encoding.utf8)!
    }
    
    var task: Task {
        switch self {
        case let .upload(data):
//            return .upload(.multipart([MultipartFormData(provider: .data(data), name: "file", fileName: "gif.gif", mimeType: "image/gif")]))
            return .requestPlain
        default:
            return .requestPlain
        }
    }
    
    var parameterEncoding: ParameterEncoding {//编码的格式
        switch self {
        case .request(_, _, _):
            return URLEncoding.default
        default:
            return URLEncoding.default
        }
    }
    
    //以下两个参数是我自己写，用来控制网络加载的时候是否允许操作，跟是否要显示加载提示，这两个参数在自定义插件的时候会用到
    var touch: Bool { //是否可以操作
        switch self {
        case .request(let isTouch, _, _):
            return isTouch
        default:
            return false
        }
    }
    
    var show: Bool { //是否显示转圈提示
        switch self {
        case .request( _, _,let isShow):
            return isShow
        default:
            return false
        }
    }
}



