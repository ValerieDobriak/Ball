//
//  ViewController.swift
//  Magic Ball
//
//  Created by Valeria on 1/29/19.
//  Copyright © 2019 Valeria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
    
    let ballArr = ["ball1","ball2", "ball3", "ball4", "ball5"]
    
    var ballIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBall()
    }


    @IBAction func askBtn(_ sender: UIButton) {
        
        randomBall()
    }
    
    func randomBall () {
        
        ballIndex = Int.random(in: 0...5)
        magicBall.image = UIImage (named: ballArr [ballIndex])
    }
}

