//
//  posts.swift
//  TheHood
//
//  Created by Arpita Bhatia on 8/8/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imgPath: String!
    private var _postTitle: String!
    private var _postDesc: String!
    
    var imgPath: String {
        
        return _imgPath
        
    }
    
    var postTitle:String {
        return _postTitle
    }
    
    var postDesc: String {
        
        return _postDesc
    }
    
    override init() {
        
    }
    
    init(imagePath:String, title:String, description:String){
        
        self._imgPath = imagePath
        self._postTitle = title
        self._postDesc = description
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imgPath =  (aDecoder.decodeObjectForKey("imagePath") as? String)!
        self._postTitle = (aDecoder.decodeObjectForKey("postTitle") as? String)!
        self._postDesc = (aDecoder.decodeObjectForKey("postDesc") as? String)!
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imgPath, forKey: "imagePath")
        aCoder.encodeObject(self._postTitle, forKey: "postTitle")
        aCoder.encodeObject(self._postDesc, forKey: "postDesc")
        
    }
    
    
    
    
}
