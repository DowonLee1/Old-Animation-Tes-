//
//  ViewController.swift
//  Tree of Life Church
//
//  Created by Dowon Lee on 2017. 11. 3..
//  Copyright © 2017년 Dowon Lee. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet var scrollview: UIScrollView!
    @IBOutlet var stack: UIStackView!
    @IBOutlet var cell1: UIView!
    @IBOutlet var view1: UIImageView!
    @IBOutlet var view2: UIImageView!
    @IBOutlet var view3: UIImageView!
    @IBOutlet var view4: UIImageView!
    
    @IBOutlet var chinese: UIButton!
    @IBOutlet var english: UIButton!
    @IBOutlet var indonesian: UIButton!
    @IBOutlet var korean: UIButton!
    @IBOutlet var spanish: UIButton!
    @IBOutlet var special: UIButton!
    
    @IBOutlet var testView: UIImageView!
    
    
    
    

    @IBOutlet var cover: UIView!
    
    @IBOutlet var button: UIButton!
    @IBOutlet var backButton: UIButton!
    

    @IBOutlet var blur: UIVisualEffectView!
    var effect: UIVisualEffect!
    
    let notification = UINotificationFeedbackGenerator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        effect = blur.effect
        blur.effect = nil
        blur.alpha = 0
        cover.alpha = 0
        
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        scrollview.contentSize.height = (cell1.frame.size.height * 4) + 10
        scrollview.contentSize.width = screenWidth
        
        view1.layer.cornerRadius = view.frame.width/26.0
        view1.clipsToBounds = true
        view2.layer.cornerRadius = view.frame.width/26.0
        view2.clipsToBounds = true
        view3.layer.cornerRadius = view.frame.width/26.0
        view3.clipsToBounds = true
        view4.layer.cornerRadius = view.frame.width/26.0
        view4.clipsToBounds = true
        
        //let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .extraLight))
        //visualEffectView.frame = (self.navigationController?.navigationBar.bounds.insetBy(dx: 0, dy: -10).offsetBy(dx: 0, dy: -10))!
        //self.navigationController?.navigationBar.isTranslucent = true
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        //self.navigationController?.navigationBar.addSubview(visualEffectView)
        //self.navigationController?.navigationBar.sendSubview(toBack: visualEffectView)
        
        
        
    }
    
    
    //override func viewWillAppear(_ animated: Bool) {
    //    super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
    //    self.navigationController?.setNavigationBarHidden(true, animated: animated)
        //UIApplication.shared.statusBarView?.backgroundColor = .black
    //    UIApplication.shared.isStatusBarHidden = true
    //}
    
    //override func viewWillDisappear(_ animated: Bool) {
    //    super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
    //    self.navigationController?.setNavigationBarHidden(false, animated: animated)
    //    UIApplication.shared.isStatusBarHidden = false
    //}
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 0, animations: {
            self.backButton.alpha = 1
            
            self.blur.alpha = 1
            self.navigationItem.leftBarButtonItem?.isEnabled = false
            self.backButton.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.chinese.alpha = 0
            self.english.alpha = 0
            self.indonesian.alpha = 0
            self.korean.alpha = 0
            self.spanish.alpha = 0
            self.special.alpha = 0
            self.chinese.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.english.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.indonesian.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.korean.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.spanish.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.special.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            //AudioServicesPlaySystemSound(1519) // Actuate `Pop` feedback (strong boom)
            //notification.notificationOccurred(.success)
            //notification.notificationOccurred(.warning)
            self.notification.notificationOccurred(.error)
            
        })
        
        UIView.animate(withDuration: 0.8, animations: {
                        self.button.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                        self.backButton.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.scrollview.transform = CGAffineTransform(scaleX: 0.86, y: 0.86)
                        self.blur.effect = self.effect
                        //self.cover.alpha = 1
                        self.button.alpha = 0
                        self.navigationController?.isNavigationBarHidden = true
                        self.backButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            
        })
        
        UIView.animate(withDuration: 0.3, delay: 0.7 ,animations: {
            self.chinese.alpha = 1
            self.chinese.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        UIView.animate(withDuration: 0.5, delay: 0.7 ,animations: {
            self.english.alpha = 1
            self.english.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        UIView.animate(withDuration: 0.7, delay: 0.7 ,animations: {
            self.indonesian.alpha = 1
            self.indonesian.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        UIView.animate(withDuration: 0.8, delay: 0.7 ,animations: {
            self.korean.alpha = 1
            self.korean.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        UIView.animate(withDuration: 0.9, delay: 0.7 ,animations: {
            self.spanish.alpha = 1
            self.spanish.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        UIView.animate(withDuration: 1.0, delay: 0.7 ,animations: {
            self.special.alpha = 1
            self.special.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        
        
        
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        
        
        UIView.animate(withDuration: 0.8,delay: 0.6 ,animations: {
                        self.button.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.scrollview.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.blur.effect = nil
                        self.blur.alpha = 0
                        //self.cover.alpha = 0
                        self.button.alpha = 1
                        self.navigationController?.isNavigationBarHidden = false
                        // self.backButton.alpha = 0
                        //AudioServicesPlaySystemSound(1519) // Actuate `Pop` feedback (strong boom)
                        self.notification.notificationOccurred(.error)
        })
      
        
        UIView.animate(withDuration: 0.8, animations: {
            self.chinese.alpha = 0
            self.chinese.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.backButton.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.backButton.alpha = 0
        })
        UIView.animate(withDuration: 0.7, animations: {
            self.english.alpha = 0
            self.english.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.6, animations: {
            self.indonesian.alpha = 0
            self.indonesian.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.5, animations: {
            self.korean.alpha = 0
            self.korean.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.4, animations: {
            self.spanish.alpha = 0
            self.spanish.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.3, animations: {
            self.special.alpha = 0
            self.special.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        
    }
    
    @IBAction func chineseClicked(_ sender: Any) {
        let theButton = sender as! UIButton
        let bounds = theButton.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y - 20, width: bounds.size.width + 60, height: bounds.size.height + 60)
        }) { (success:Bool) in
            if success{
                UIView.animate(withDuration: 0.5, animations: {
                    theButton.bounds = bounds
                })
                
            }
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func test(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            self.scrollview.alpha = 0.1
            AudioServicesPlaySystemSound(1519) // Actuate `Pop` feedback (strong boom)
        }, completion: { _ in
            UIView.animate(withDuration: 1) {
                self.scrollview.alpha = 1
            }

    })
        
    }
    
    @IBAction func swipeGesture(_ sender: Any) {
        UIView.animate(withDuration: 0.8,delay: 0.6 ,animations: {
            self.button.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.scrollview.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.blur.effect = nil
            self.blur.alpha = 0
            //self.cover.alpha = 0
            self.button.alpha = 1
            self.navigationController?.isNavigationBarHidden = false
            // self.backButton.alpha = 0
            //AudioServicesPlaySystemSound(1519) // Actuate `Pop` feedback (strong boom)
            self.notification.notificationOccurred(.error)
        })
        
        
        UIView.animate(withDuration: 0.8, animations: {
            self.chinese.alpha = 0
            self.chinese.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.backButton.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.backButton.alpha = 0
        })
        UIView.animate(withDuration: 0.7, animations: {
            self.english.alpha = 0
            self.english.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.6, animations: {
            self.indonesian.alpha = 0
            self.indonesian.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.5, animations: {
            self.korean.alpha = 0
            self.korean.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.4, animations: {
            self.spanish.alpha = 0
            self.spanish.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
        UIView.animate(withDuration: 0.3, animations: {
            self.special.alpha = 0
            self.special.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })

    }
    
    
    
    
}



