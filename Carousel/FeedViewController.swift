//
//  FeedViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/9/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var feedScrollView: UIScrollView!

    @IBOutlet weak var feedImg: UIImageView!
    
    @IBOutlet weak var convoBtn: UIButton!
    
    @IBAction func onConvoBtn(sender: AnyObject) {
        
    }
    @IBOutlet weak var profileBtn: UIButton!
    @IBAction func onProfileBtn(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        feedScrollView.contentSize = feedImg.image!.size
        feedScrollView.contentInset = UIEdgeInsets (top: 0, left: 0, bottom: 36, right: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
