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
    
    // die Custom Cell muss als gültige Zelle registriert werden
    func registerCellsForTableView(tableView: UITableView) {
        tableView.registerClass(MainTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // Anzahl der Zellen, hier fest auf 10, was später geändert wird
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // Daten der Zelle, hier quasi statisch
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MainTableViewCell
        
        cell.mainLabel1.text = "Entry \(indexPath.row+1)"
        cell.mainLabel2.text = "Blabla Company"
        
        return cell
    }
    
    // Methode beim Auswählen
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    // Höhe setzen
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 85
    }
}

