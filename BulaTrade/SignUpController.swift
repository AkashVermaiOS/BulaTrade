//
//  SignUpController.swift
//  BulaTrade
//
//  Created by macbook on 23/09/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {

    //MARK: ViewController LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    //MARK: IBActions
    @IBAction func btnBackController(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnSignUpAction(_ sender: Any) {
    }
}
