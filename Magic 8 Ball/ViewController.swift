//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        
        sender.alpha = 0.5
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
            sender.alpha = 1.0
        }
        
        let random = Int.random(in: 0...4)
        imageView.image = [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4")] [random]
        
    }
    

}

