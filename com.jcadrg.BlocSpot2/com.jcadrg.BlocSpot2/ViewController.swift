//
//  ViewController.swift
//  com.jcadrg.BlocSpot2
//
//  Created by Juanca on 3/27/18.
//  Copyright © 2018 Juanca. All rights reserved.
//

import UIKit
import SwiftIcons

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "BlocSpot"
        
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "POITableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "POICell")
        
        let leftBtn = UIBarButtonItem(title: nil, style: .plain, target: self, action: #selector(goToMap))
        let rightBtn1 = UIBarButtonItem()
        let rightBtn2 = UIBarButtonItem()
        
        leftBtn.setIcon(icon: .linearIcons(.mapMarker), iconSize: 22, color: UIColor.black)
        rightBtn1.setIcon(icon: .linearIcons(.magnifier), iconSize: 22, color: UIColor.black)
        rightBtn2.setIcon(icon: .linearIcons(.funnel), iconSize: 22, color: UIColor.black)
        
        self.navigationItem.leftBarButtonItem = leftBtn
        self.navigationItem.rightBarButtonItems = [rightBtn1,rightBtn2]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    @objc func goToMap(){
        self.performSegue(withIdentifier: "mainMenuToMapSegue", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as! POITableViewCell
        cell.POITitle.text = "Un lugar x de la vida"
        cell.POIIcon.setIcon(icon: .emoji(.heartOpen), iconSize: 18, color: UIColor.black)
        cell.distanceLabel.text = "< 1 km"
        cell.reviewLabel.text = "Los perros dicen que este lugar es de la gran puta"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

}

