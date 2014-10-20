//
//  ViewController.swift
//  99RedBalloons
//
//  Created by NanYar on 20.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController
{
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var balloonsLabel: UILabel!
    
    var balloons: [Balloon] = []
    var currentIndex = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.createBalloons()
    }

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func nextBalloonBarButtonItemPressed(sender: UIBarButtonItem)
    {
        if currentIndex < balloons.count
        {
            let balloon = balloons[currentIndex]
            balloonsLabel.text = String(balloon.number) + ". Balloon"
            backgroundImageView.image = balloon.image
            currentIndex++
        }
        else
        {
            balloonsLabel.text = "Balloons"
            backgroundImageView.image = UIImage(named: "BerlinTVTower.jpg")
            currentIndex = 0
        }
    }
    
    
    func createBalloons()
    {
        for var balloonCount = 1; balloonCount <= 9; balloonCount++
        {
            var balloon = Balloon()
            balloon.number = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4))) // => 0 - 3
            switch randomNumber
            {
            case 0: balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 1: balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 2: balloon.image = UIImage(named: "RedBalloon3.jpg")
            default: balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.balloons.append(balloon)
        }
    }
}
