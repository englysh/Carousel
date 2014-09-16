//
//  IntroViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/9/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var introImg: UIImageView!
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var signinBtn: UIButton!
    
    
    @IBOutlet weak var tileView01: UIImageView!
    @IBOutlet weak var tileView02: UIImageView!
    @IBOutlet weak var tileView03: UIImageView!
    @IBOutlet weak var tileView04: UIImageView!
    @IBOutlet weak var tileView05: UIImageView!
    @IBOutlet weak var tileView06: UIImageView!
    
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.delegate = self
        introScrollView.contentSize = introImg.image!.size

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {

        var offset = Float(introScrollView.contentOffset.y)
        println("content offset: \(introScrollView.contentOffset.y)")
       
        //***FIRST TILE***
        //content offset goes from 0 ->568
        //y offsent: -285 -> 0
        //x offset: -30 -> 0
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tileView01.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tileView01.transform = CGAffineTransformScale(tileView01.transform, CGFloat(scale), CGFloat(scale))
        tileView01.transform = CGAffineTransformRotate(tileView01.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        //***SECOND DEER TILE***
        //content offset goes from 0 ->568
       
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tileView02.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tileView02.transform = CGAffineTransformScale(tileView02.transform, CGFloat(scale2), CGFloat(scale2))
        tileView02.transform = CGAffineTransformRotate(tileView02.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        //***THIRD MAN w FISH TILE***
        //content offset goes from 0 ->568
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tileView03.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tileView03.transform = CGAffineTransformScale(tileView03.transform, CGFloat(scale3), CGFloat(scale3))
        tileView03.transform = CGAffineTransformRotate(tileView03.transform, CGFloat(Double(rotation3) * M_PI / 180))

        //***FOURTH Cabin in the woods TILE***
        //content offset goes from 0 ->568
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tileView04.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tileView04.transform = CGAffineTransformScale(tileView04.transform, CGFloat(scale4), CGFloat(scale4))
        tileView04.transform = CGAffineTransformRotate(tileView04.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        
        
        //***FIFTH lake monster TILE***
        //content offset goes from 0 ->568
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tileView05.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tileView05.transform = CGAffineTransformScale(tileView05.transform, CGFloat(scale5), CGFloat(scale5))
        tileView05.transform = CGAffineTransformRotate(tileView05.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        //***SIXTH woman w dog TILE***
        //content offset goes from 0 ->568
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tileView06.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tileView06.transform = CGAffineTransformScale(tileView06.transform, CGFloat(scale6), CGFloat(scale6))
        tileView06.transform = CGAffineTransformRotate(tileView06.transform, CGFloat(Double(rotation6) * M_PI / 180))
       
        
       
        
    }
    
    @IBAction func onCreateBtn(sender: AnyObject) {
    }
    
    @IBAction func onSigninBtn(sender: AnyObject) {
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
