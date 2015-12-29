//
//  MainView.swift
//  TestTableViewController
//
//  Created by Markus Schmitt on 29.12.15.
//  Copyright © 2015 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainView: UIView {

    var mainList: UITableView
    
    override init(frame: CGRect) {
        
        // TableView
        mainList = UITableView(frame: .zero)
        mainList.translatesAutoresizingMaskIntoConstraints = false
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        addSubview(mainList)
        
        let views = ["mainList": mainList]
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[mainList]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[mainList]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
