//
//  MainListDataProvider.swift
//  TestTableViewController
//
//  Created by Markus Schmitt on 29.12.15.
//  Copyright © 2015 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainListDataProvider: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var cellIdentifier = "Cell"
    
    // register custom cell
    func registerCellsForTableView(tableView: UITableView) {
        tableView.registerClass(MainTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // number of cells: static to 10 here
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // cell data
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MainTableViewCell
        
        cell.mainLabel1.text = "Entry \(indexPath.row+1)"
        cell.mainLabel2.text = "Blabla Company"
        
        return cell
    }
    
    // cell selected
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    // set height for a cell
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 85
    }
}

