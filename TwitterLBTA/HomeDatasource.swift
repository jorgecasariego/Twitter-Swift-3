//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Jorge Casariego on 6/1/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let brianUser = User(name: "brianName", username: "@brianUsername", bioText: "iOS Developer, Instructor", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let rayUser = User(name: "rayName", username: "@rayUsername", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference: http://www.rwdevcon.com ", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        
        return [brianUser, rayUser]
    }()
    
    let tweets = ["tweet 1", "tweet 2"]
        
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        
        return users.count
    }
}

