//
//  Embed.swift
//  ActivityViewController
//
//  Created by Jeff Gayle on 12/13/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class Embed: UIActivity {
    
    let embedActivityType = "com.gettyimages.activity.Embed"
    
    override func activityType() -> String? {
        return embedActivityType
    }
    
    override func activityTitle() -> String? {
        return "Embed"
    }
    
    override func activityImage() -> UIImage? {
        return UIImage(named: "Flappy Doge")
    }
    
    override class func activityCategory() -> UIActivityCategory {
        return UIActivityCategory.Share
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        //Do Something
        for item in activityItems {
            if item.isKindOfClass(NSString) {
                UIPasteboard.generalPasteboard().string = item as NSString
            }
        }
    }
}
