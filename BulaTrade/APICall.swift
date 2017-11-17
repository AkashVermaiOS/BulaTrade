//
//  APICall.swift
//  BulaTrade
//
//  Created by Akash Verma on 16/10/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

private let BaseURL = "http://geekyadvice.com/geekyadmin/admin/api/"
let APIGetAPIKey = "get_apikey.php"

class APICall: NSObject {
    
    static let sharedAppAPI : APICall = APICall()
    typealias convenienceHandler = ( _ returnObject: Any?,  _ error: NSError?) -> Void
    typealias jsonHandler = (_ returnObject: JSON?, _ error: NSError?) -> Void
    
    
    fileprivate lazy var operationHandler: OperationQueue = {
        
        let operation = OperationQueue()
        operation.maxConcurrentOperationCount = OperationQueue.defaultMaxConcurrentOperationCount
        
        return operation
        
    }()

    
    // MARK:- *** POST ****
    
   static func signInWithEmail(_ params: [String : Any],  completion: @escaping convenienceHandler) {
        let loginPath = BaseURL + APIGetAPIKey
        
        Alamofire.request(loginPath, method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).responseJSON { (responseObject) -> Void in
            
            completion(responseObject.result.value, responseObject.result.error as NSError?)
        }
    }
    
   static func getAppID(_ completion: @escaping convenienceHandler) {
        let loginPath = BaseURL + APIGetAPIKey
        
        Alamofire.request(loginPath, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (responseObject) -> Void in
            DispatchQueue.main.async(execute: { () -> Void in
                completion(responseObject.result.value, responseObject.result.error as NSError?)
            })

          
        }
    }

}
