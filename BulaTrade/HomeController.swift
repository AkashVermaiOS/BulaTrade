//
//  HomeController.swift
//  BulaTrade
//
//  Created by macbook on 23/09/17.
//  Copyright © 2017 Akash Verma. All rights reserved.
//

import UIKit
import SideMenuController


class HomeController: UIViewController,SideMenuControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sideMenuController?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSideMenu(_ sender: Any) {
        
        sideMenuController?.toggle()
        
    }

    
    // MARK: - SideMenu Delegates
    func sideMenuControllerDidHide(_ sideMenuController: SideMenuController) {
        print(#function)
    }
    
    func sideMenuControllerDidReveal(_ sideMenuController: SideMenuController) {
        print(#function)
    }
}
