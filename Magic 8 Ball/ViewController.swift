//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nabyl Bennouri on 5/1/19.
//  Copyright © 2019 Three14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    var imageRandNumber: Int = 0
    var imagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
    }

    @IBAction func askButtonPress(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    func newBallImage() {
        imageRandNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: imagesArray[imageRandNumber])
    }
}

