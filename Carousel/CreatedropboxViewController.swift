//
//  CreatedropboxViewController.swift
//  Carousel
//
//  Created by Engly Chang on 9/9/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

import UIKit

class CreatedropboxViewController: UIViewController, UIAlertViewDelegate {
    @IBOutlet weak var signinBtnContainer: UIView!
    @IBOutlet weak var signinFormContainer: UIView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var signinBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signinBtn.enabled = false
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    @IBAction func focusEmail(sender: UITextField) {
        println("email")
        
        
        if emailTxtField.text=="" || passTxtField.text==""{
            self.signinBtn.enabled=false
        }
        else{
            self.signinBtn.enabled = true
        }
    }
    
    @IBAction func focusPassword(sender: UITextField) {
        
        if emailTxtField.text=="" || passTxtField.text==""{
            self.signinBtn.enabled=false
        }
        else{
            self.signinBtn.enabled = true
        }
    }
    
    @IBAction func onSignInBtn(sender: AnyObject) {
        
        
        var loadingAlert = UIAlertView(title: "Signing in...", message: "", delegate: self, cancelButtonTitle: nil)
        
        
        loadingAlert.show()
        
        
        
        delay(2, closure: { () -> () in
            
            if (self.emailTxtField.text == "a" && self.passTxtField.text == "a") {
                self.performSegueWithIdentifier("tutorialSeque", sender: self)
                loadingAlert.dismissWithClickedButtonIndex(0, animated: true)
                

            } else {
                UIAlertView(title: "Oops", message: "Wrong email or password!", delegate: nil, cancelButtonTitle: "OK").show()
                loadingAlert.dismissWithClickedButtonIndex(0, animated: true)

            }
        })

    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))

            ),
            dispatch_get_main_queue(), closure)
    }

    
    @IBAction func onTapDissmissKB(sender: AnyObject) {
        view.endEditing(true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackBtn(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
       
    func keyboardWillShow(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
           
            self.signinFormContainer.frame.origin.y = 90-100;
           // self.signinFormContainer.frame.origin.y = self.signinFormContainer.frame.origin.y-90
 
            self.signinBtnContainer.frame.origin.y = 440-240;
            //self.signinBtnContainer.frame.origin.y = self.signinBtnContainer.frame.origin.y-240
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.

            }, completion: nil)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            self.signinFormContainer.frame.origin.y = 90;
            
            //self.signinFormContainer.frame = CGRectMake(self.signinFormContainer.frame.origin.x, self.signinFormContainer.frame.origin.y+(kbSize.height)/3, self.signinFormContainer.frame.size.width, self.signinFormContainer.frame.size.height)
            
            self.signinBtnContainer.frame.origin.y = 440;

            //  self.signinBtnContainer.frame = CGRectMake(self.signinBtnContainer.frame.origin.x, self.signinBtnContainer.frame.origin.y+240, self.signinBtnContainer.frame.size.width, self.signinBtnContainer.frame.size.height)
            

            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            
            }, completion: nil)
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
