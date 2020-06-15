//
//  CurrentRunVC.swift
//  Treads
//
//  Created by Urmat on 6/15/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import UIKit

class CurrentRunVC: LocationVC {

    @IBOutlet weak var swipeBGImageVIew: UIImageView!
    @IBOutlet weak var sliderImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeGesture = UIPanGestureRecognizer(target: self, action: #selector(endRunSwiped(sender:)))
        sliderImageView.addGestureRecognizer(swipeGesture)
        sliderImageView.isUserInteractionEnabled = true
        swipeGesture.delegate = self as? UIGestureRecognizerDelegate
    }

    @objc func endRunSwiped(sender: UIPanGestureRecognizer) {
        let minAdjust: CGFloat = 80
        let maxAdjust: CGFloat = 128
        if let sliderView = sender.view {
            if sender.state == UIGestureRecognizer.State.began || sender.state == UIGestureRecognizer.State.changed {
                let translation = sender.translation(in: self.view)
                if sliderView.center.x >= (swipeBGImageVIew.center.x - minAdjust) && sliderView.center.x <= (swipeBGImageVIew.center.x + maxAdjust) {
                    sliderView.center.x = sliderView.center.x + translation.x
                } else if sliderView.center.x >= (swipeBGImageVIew.center.x + maxAdjust){
                    sliderView.center.x = swipeBGImageVIew.center.x + maxAdjust
                    //End Run Code
                    dismiss(animated: true, completion: nil)
                } else {
                    sliderView.center.x = swipeBGImageVIew.center.x - minAdjust
                }
                
                sender.setTranslation(CGPoint.zero, in: self.view)
            } else if sender.state == UIGestureRecognizer.State.ended {
                UIView.animate(withDuration: 0.1) {
                    sliderView.center.x = self.swipeBGImageVIew.center.x - minAdjust
                }
            }
        }
    }
    
}
