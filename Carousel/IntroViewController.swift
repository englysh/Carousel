//
//  IntroViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/9/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    @IBOutlet weak var introImg: UIImageView!
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var signinBtn: UIButton!
    
    
    @IBAction func onCreateBtn(sender: AnyObject) {
    }
    
    @IBAction func onSigninBtn(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = introImg.image!.size
        //introScrollView.contentInset = UIEdgeInsets (top: 0, left: 0, bottom: 50, right: 0)
        

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
