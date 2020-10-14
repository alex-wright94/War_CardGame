//
//  ViewController.swift
//  WarCardGame2
//
//  Created by Alex Wright on 4/30/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var Leftscorelabel: UILabel!
    
    
    @IBOutlet weak var Rightscorelabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
    }


    @IBAction func dealTapped(_ sender: Any) {
        
//        randomize some numbers
        
        let leftNumber = Int.random(in: 2...14)
        
        
        let rightNumber = Int.random(in: 2...14)
        
//        update image viewa
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
//        compare the scores
        if leftNumber > rightNumber {
            leftScore += 1
            
            Leftscorelabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            
            Rightscorelabel.text = String(rightScore)
        }
        
        else {
            
        }
    }
    
    
    
    
    
}

