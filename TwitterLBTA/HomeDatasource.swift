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
    
    let tweets: [Tweet] = {
        let brianUser = User(name: "brianName", username: "@brianUsername", bioText: "iOS Developer, Instructor", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let tweet = Tweet(user: brianUser, message: "We are already similar to the three V’s of big data: volume, velocity and variety. And yet, the cost and effort invested in dealing with poor data quality makes us consider the fourth aspect of Big Data – veracity.")
        
        let tweet2 = Tweet(user: brianUser, message: "In the era of Big Data, with the huge volume of generated data, the fast velocity of incoming data, and the large variety of heterogeneous data, the quality of data often is rather far from perfect. ")
        
        return [tweet, tweet2]
        
    }()
        
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
        if indexPath.section == 1 {
            return tweets[indexPath.row]
        }

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

