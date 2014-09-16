//
//  ProfileViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/10/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileScrollView: UIScrollView!

    @IBOutlet weak var closeBtn: UIButton!
    @IBAction func onCloseBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet weak var signoutBtn: UIButton!
    @IBAction func onSignoutBtn(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        profileScrollView.contentSize = profileImg.image!.size
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
