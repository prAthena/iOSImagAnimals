//
//  ImaginaryAnimal.swift
//  ImaginaryAnimalsLister
//
//  Created by Alex Garbowitz on 9/14/15.
//  Copyright © 2015 Alex Garbowitz. All rights reserved.
//

import Foundation

//structs have no superclass, but they can conform to protocols
//structs make copies - pass by value rather than by reference, however in swift there is copy on write
//it only makes a new copy when there is an actual change made

struct ImaginaryAnimal {
    var name : String
    var height : String
    var location : String
    var dateLastSeen: String
    var imageURL: NSURL?
    
    init?(fromJSON json:AnyObject) {
        
        guard let json = json as? [String:AnyObject] else {
            return nil
        }
        
        name = json["name"] as! String
        height = json["height"] as! String
        location = json["location"] as! String
        dateLastSeen = json["dateLastSeen"] as! String
        
        if let imageURLString = json["imageURL"] as? String {
            imageURL = NSURL(string: imageURLString)
        }
    }
    
}
