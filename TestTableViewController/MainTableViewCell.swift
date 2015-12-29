//
//  MainTableViewCell.swift
//  TestTableViewController
//
//  Created by Markus Schmitt on 29.12.15.
//  Copyright © 2015 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    var mainLabel1: UILabel!
    var mainLabel2: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        mainLabel1 = UILabel()
        mainLabel1.frame = CGRectMake(0,0,0,0)
        mainLabel1.textColor = UIColor.blackColor()
        mainLabel1.textAlignment = .Left
        mainLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(mainLabel1)
        
        mainLabel2 = UILabel()
        mainLabel2.frame = CGRectMake(0,0,0,0)
        mainLabel2.textColor = UIColor.blackColor()
        mainLabel2.textAlignment = .Right
        mainLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(mainLabel2)
        
        let views = ["mainLabel1": mainLabel1, "mainLabel2": mainLabel2]
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[mainLabel1]-|", options: [NSLayoutFormatOptions.AlignAllLeft], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[mainLabel1]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[mainLabel2]-|", options: [NSLayoutFormatOptions.AlignAllRight], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[mainLabel2]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
