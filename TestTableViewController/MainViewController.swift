//
//  MainViewController.swift
//  TestTableViewController
//
//  Created by Markus Schmitt on 29.12.15.
//  Copyright © 2015 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    
    var mainView: MainView {
        return view as! MainView
    }
    
    var dataProvider : MainListDataProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.mainList.dataSource = dataProvider
        mainView.mainList.delegate = dataProvider
        mainView.mainList.registerClass(MainTableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }
    
    override func loadView() {
        let contentView = MainView(frame: UIScreen.mainScreen().bounds)
        view = contentView
        
    }
}
