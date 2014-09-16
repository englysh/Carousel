//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/15/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollImages: UIView!
    @IBOutlet weak var imagesScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        pageControl.hidden = false;
        imagesScrollView.delegate = self
        
       
        imagesScrollView.contentSize = scrollImages.frame.size
        println(scrollImages.frame.size)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        println(page)
        if(page == 3){
        pageControl.alpha  = 0;
            
        }else {
            pageControl.alpha = 1;
        }
    }

    
    
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
//        // Get the current page based on the scroll offset
//        var page : Int = Int(round(scrollView.contentOffset.x / 320))
//        
//        // Set the current page, so the dots will update
//        pageControl.currentPage = page
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
