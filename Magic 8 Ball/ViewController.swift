//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anirudh Kulkarni on 11/28/17.
//  Copyright © 2017 Anirudh Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber = 0

    @IBOutlet weak var magicBallImage: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateBallImage(){
        randomNumber = Int(arc4random_uniform(5))
        print(randomNumber)
        magicBallImage.image = UIImage(named:imageArray[randomNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }

}

