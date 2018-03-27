//
//  ViewController.swift
//  com.jcadrg.BlocSpot2
//
//  Created by Juanca on 3/27/18.
//  Copyright © 2018 Juanca. All rights reserved.
//

import UIKit
import SwiftIcons

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "BlocSpot"
        let leftBtn = UIBarButtonItem()
        let rightBtn1 = UIBarButtonItem()
        let rightBtn2 = UIBarButtonItem()
        
        leftBtn.setIcon(icon: .linearIcons(.mapMarker), iconSize: 22, color: UIColor.black)
        rightBtn1.setIcon(icon: .linearIcons(.magnifier), iconSize: 22, color: UIColor.black)
        rightBtn2.setIcon(icon: .linearIcons(.funnel), iconSize: 22, color: UIColor.black)
        
        self.navigationItem.leftBarButtonItem = leftBtn
        self.navigationItem.rightBarButtonItems = [rightBtn1,rightBtn2]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

