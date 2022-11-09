//
//  rightViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 8/11/22.
//

import UIKit

class rightViewController: UIViewController {
    
    let redview = UIView(frame: CGRect(x: 45, y: 250, width: 300, height: 300))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        right_anim()
        springAnimation()

    }
    
    func right_anim(){
        redview.backgroundColor = .red
        redview.bounds = CGRect(x: 45, y: 250, width: 300, height: 300)
        let animation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 1000
        animation.toValue  = 200
        animation.duration = 1
        
        redview.layer.add(animation, forKey: "basic")
        view.addSubview(redview)
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
        redview.layer.add(jump, forKey: nil)
    }

}
