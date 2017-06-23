//
//  TodoTableViewCell.swift
//  RemindMe
//
//  Created by Julia Skrak on 6/22/17.
//  Copyright © 2017 jskrak. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    let titleLabel = UILabel()
   
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        
        
        addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[titleLabel]|", options: NSLayoutFormatOptions.init(rawValue: 0), metrics: nil, views: ["titleLabel" : titleLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[titleLabel]|", options: NSLayoutFormatOptions.init(rawValue: 0), metrics: nil, views: ["titleLabel" : titleLabel]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(task: TaskObject) {
        titleLabel.text = task.title
  
    }

}
