//
//  ViewController.swift
//  BulaTrade
//
//  Created by macbook on 23/09/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import UIKit
import TextFieldEffects

class LoginController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var btnRemberMe: UIButton!
    @IBOutlet weak var txtEmail: HoshiTextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var txtPassword: HoshiTextField!
    
    //MARK: Variables And Constants
    let customBlueColor = UIColor(red: 5.0/255.0, green: 46.0/255.0, blue: 112.0/255.0, alpha: 1.0)

    
    // MARK:UIViewController LifeCycles
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let m = "test"
        APICall.getAppID( { (returnObject, error) -> Void in
            
            if returnObject == nil {
              //  self.showErrorMessage("No Internet Connection", message: "Please check your internet connection")
                CommonUtility.showAlertMessage(withTitle: (error?.localizedDescription)!, message: "", Controller: self)
                return;
            }
            
            let returnError  = returnObject as! NSDictionary
            if (returnError["message"] != nil || returnError["error"] != nil) {
                
                CommonUtility.showAlertMessage(withTitle: returnError["error"] as! String, message: "", Controller: self)
                
            }else{
                print("\n --- Login Credentials: \(returnObject as! NSDictionary)\n")
               
                    DispatchQueue.main.async { () -> Void in
                    
                    }
                }
            })
      
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBActions
    @IBAction func btnSignUpAction(_ sender: Any)
    {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "signUp") as? SignUpController {
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }
    @IBAction func btnSignInAction(_ sender: Any) {
        
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "customSideMenuID") as? CustomSideMenuController {
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }
    
    // MARK: Methods
    func UIUpdate()
    {


    }
}

