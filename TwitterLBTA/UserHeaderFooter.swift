//
//  Cells.swift
//  TwitterLBTA
//
//  Created by Jorge Casariego on 6/1/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents

let twitterBlue = UIColor(r: 61, g: 167, b: 244)

class UserHeader: DatasourceCell {
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}

class UserFooter: DatasourceCell {
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = twitterBlue
        return label
    }()
    
    override func setupViews() {
        super.setupViews()

        let whiteBackgroundView = UIView()
        whiteBackgroundView.backgroundColor = .white
        
        addSubview(whiteBackgroundView)
        addSubview(textLabel)
        
        whiteBackgroundView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
