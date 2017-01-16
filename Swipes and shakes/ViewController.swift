//
//  ViewController.swift
//  Swipes and shakes
//
//  Created by Shailendra Suriyal on 16/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)));
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)));
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)));
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)));
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
        self.view.addGestureRecognizer(swipeUp)
        self.view.addGestureRecognizer(swipeDown)
    }

    func swiped(gesture : UISwipeGestureRecognizer) {
        
        switch gesture.direction {
        case UISwipeGestureRecognizerDirection.up:
            
            print("Swipe up")
        case UISwipeGestureRecognizerDirection.left:
            
            print("Swipe left")
        case UISwipeGestureRecognizerDirection.right:
            
            print("Swipe right")
        case UISwipeGestureRecognizerDirection.down:
            
            print("Swipe down")
            
        default:
            
            print("Swiped")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("Device as Shaken. . .")
        }
    }
    
}

