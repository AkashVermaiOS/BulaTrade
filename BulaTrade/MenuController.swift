//
//  MenuController.swift
//  Example
//
//  Created by Teodor Patras on 16/06/16.
//  Copyright © 2016 teodorpatras. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {
    
    let segues = ["homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView","homeView"]
    private var previousIndex: NSIndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // tableView.rowHeight = UITableViewAutomaticDimension
      //  tableView.estimatedRowHeight = 44
        self.tableView.contentInset = UIEdgeInsetsMake(-36, 0, 0, 0);
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row==0
        {
          return 125
        }
        return 44
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return segues.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        if indexPath.row==0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell1")!
            return cell
        }
        else   if indexPath.row==1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell2")!
            return cell
        }
        else   if indexPath.row==2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell3")!
            return cell
        } else   if indexPath.row==3
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell4")!
            return cell
        } else   if indexPath.row==4
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell5")!
            return cell
        } else   if indexPath.row==5
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell6")!
            return cell
        } else   if indexPath.row==6
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell7")!
            return cell
        } else   if indexPath.row==7
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell8")!
            return cell
        } else   if indexPath.row==8
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell9")!
            return cell
        } else   if indexPath.row==9
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell10")!
            return cell
        } else   if indexPath.row==10
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell11")!
            return cell
        } else   if indexPath.row==11
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell12")!
            return cell
        } else   if indexPath.row==12
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell13")!
            return cell
        } else   if indexPath.row==13
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell14")!
            return cell
        } else   if indexPath.row==14
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell15")!
            return cell
        } else   if indexPath.row==15
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell16")!
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell17")!
            return cell
        }
    }

    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)
    {
    
        if let index = previousIndex {
            tableView.deselectRow(at: index as IndexPath, animated: true)
        }
        
        sideMenuController?.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
        previousIndex = indexPath as NSIndexPath?
    }
    
}


