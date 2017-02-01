//
//  TweeCell.swift
//  TwitterLBTA
//
//  Created by Jorge Casariego on 18/1/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let tweet = datasourceItem as? Tweet else { return }
            
            // Name
            let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 16)])
            // Username
            let usernameString = "  \(tweet.user.username)\n"
            attributedText.append(NSAttributedString(string: usernameString, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 15), NSForegroundColorAttributeName: UIColor.gray]))
            
            // Spacing between username and message
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 4
            let range = NSMakeRange(0, attributedText.string.characters.count)
            attributedText.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range: range)
            // Message
            attributedText.append(NSAttributedString(string: tweet.message, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15)]))
            
            messageTextView.attributedText = attributedText
        }
    }
    
    let messageTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Some message of the tweet"
        return textView
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "profile_image")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let replyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "reply"), for: .normal)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        backgroundColor = .white
        
        
        addSubview(profileImageView)
        addSubview(messageTextView)
        addSubview(replyButton)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        messageTextView.anchor(self.topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        replyButton.anchor(nil, left: <#T##NSLayoutXAxisAnchor?#>, bottom: <#T##NSLayoutYAxisAnchor?#>, right: <#T##NSLayoutXAxisAnchor?#>, topConstant: <#T##CGFloat#>, leftConstant: <#T##CGFloat#>, bottomConstant: <#T##CGFloat#>, rightConstant: <#T##CGFloat#>, widthConstant: <#T##CGFloat#>, heightConstant: <#T##CGFloat#>)
        
        
    }
}
