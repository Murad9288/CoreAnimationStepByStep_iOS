//
//  imageViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 7/11/22.
//

import UIKit

class imageViewController: UIViewController {

    let greenView = UIView(frame: CGRect(x: 45, y: 250, width: 300, height: 300))
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        left_anim()
        
    }
    
    func left_anim() {
        greenView.backgroundColor = .cyan
        greenView.bounds = CGRect(x: 45, y: 250, width: 300, height: 300)
        let animation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = -700
        animation.toValue  = 200
        animation.duration = 1
        
        greenView.layer.add(animation, forKey: "basic")
        view.addSubview(greenView)
        
    }
    
    func springAnimation(){
        let jump = CASpringAnimation(keyPath: "transform.scale")
        jump.damping = 150
        jump.mass = 30
        jump.initialVelocity = 10
        jump.stiffness = 1500.0
        jump.fromValue = 0
        jump.toValue = 1
        jump.duration = jump.settlingDuration
        greenView.layer.add(jump, forKey: nil)
    }

}
