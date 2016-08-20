//
//  PostCell.swift
//  TheHood
//
//  Created by Arpita Bhatia on 8/8/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var postLbl: UILabel!
    @IBOutlet weak var postDesc: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    func configureCell(post: Post ){
    
        postLbl.text = post.postTitle
        postDesc.text =  post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imgPath)
    
    
    }

    
}
