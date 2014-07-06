//
//  ViewController.swift
//  swiftView
//
//  Created by Jammy on 2014/6/25.
//  Copyright (c) 2014 Takobear. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let cellIdentifier = "cell_indentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var testTableview :UITableView = UITableView(frame:CGRectMake(0, 0, 320, 568), style:UITableViewStyle.Plain)
        testTableview.delegate = self
        testTableview.dataSource = self
        testTableview.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
        
        self.view.addSubview(testTableview)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell :UITableViewCell = UITableViewCell()
        cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as UITableViewCell
        if (cell == nil) {
            cell = UITableViewCell (style:UITableViewCellStyle.Default, reuseIdentifier:cellIdentifier)
        }
        cell.text  = "hello \(indexPath.row)"
        return cell
    }

}

