//
//  ViewController.swift
//  BulaTrade
//
//  Created by macbook on 23/09/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import UIKit
import TextFieldEffects

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var btnRemberMe: UIButton!
    @IBOutlet weak var txtEmail: HoshiTextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var txtPassword: HoshiTextField!
    
    //MARK: Variables And Constants
    let customBlueColor = UIColor(red: 5.0/255.0, green: 46.0/255.0, blue: 112.0/255.0, alpha: 1.0)

    
    // MARK:UIViewController LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: IBActions
    @IBAction func btnSignUpAction(_ sender: Any) {
    }
    @IBAction func btnSignInAction(_ sender: Any) {
    }
    
    // MARK: Methods
    func UIUpdate()
    {


    }
}

