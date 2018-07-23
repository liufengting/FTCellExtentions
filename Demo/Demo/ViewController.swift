//
//  ViewController.swift
//  Demo
//
//  Created by liufengting on 2018/7/20.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit
import FTCellExtentions

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerCellClass(cellClass: TableViewCell.classForCoder())
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellClass(cellClass: TableViewCell.classForCoder(), for: indexPath)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        
    }
    
    
}

