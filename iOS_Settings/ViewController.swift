//
//  ViewController.swift
//  iOS_Settings
//
//  Created by Anand on 21/01/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    let profile = [["name": "UserName", "image": "username"]]
    
    let setting = [["name": "Airplane", "image": "airplane"], ["name": "Wifi","image": "wifi"], ["name": "Bluetooth", "image": "bluetooth"], ["name": "Mobiledata", "image": "mobiledata"], ["name": "Hotspot", "image":"hotspot"], ["name": "Carrier", "image": "carrier"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableview.estimatedRowHeight = 44.0
        tableview.rowHeight = UITableViewAutomaticDimension
        
        tableview.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard section == 1 else {
            return 1
        }
        return setting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.section == 0 else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SwitchImageCell
            let dict = setting[indexPath.row]
            
            guard let settingImg = dict["image"], let lbl = dict["name"] else {
                return cell
            }
            
            cell.iconImg.image = UIImage(named: settingImg)
            cell.iconName.text = lbl
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! imageCell
        return cell
    }
    
}


















