//
//  ViewController.swift
//  ActivityViewController
//
//  Created by Jeff Gayle on 12/13/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sharePressed(sender: AnyObject) {
        
        let string : NSString = "Test"
        let url : NSURL = NSURL(string: "www.espn.com")!
        let embedAction = Embed()
        
        var activityViewController = UIActivityViewController(activityItems: [string, url], applicationActivities: [embedAction])
        
        self.presentViewController(activityViewController, animated: true, completion: nil)
        
    }
    
    
    
//    func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject? {
//        
//    }
//    
//    func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String {
//        
//    }
//    
//    func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject {
//        
//    }
    
}

