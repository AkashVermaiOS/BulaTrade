//
//  CommonUtility.swift
//  BulaTrade
//
//  Created by macbook on 23/09/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import Foundation
import UIKit

class CommonUtility
{
    static func showAlertMessage(withTitle title: String, message msg: String,Controller vc: UIViewController) {
        
        
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        vc.present(alertController, animated: true, completion: nil)
    }
 
    
 static  func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    static func setInitialViewController(storyboardId:String)
    {
        let storyboard = UIStoryboard(name : "Main" , bundle : nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: storyboardId)
        let appdelegate = (UIApplication.shared.delegate as! AppDelegate)
        appdelegate.window?.rootViewController = viewcontroller
    }
    
    static func isMobileNumberValidate(number: String) -> Bool {
        let numberRegEx = "[0-9]{10}"
        let numberTest = NSPredicate(format: "SELF MATCHES %@", numberRegEx)
        if numberTest.evaluate(with: number) == true {
            return true
        }
        else {
            return false
        }
    }
}


