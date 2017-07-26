//
//  GameViewController.swift
//  bootcamp test
//
//  Created by Abdulhakim Ajetunmobi on 29/09/2016.
//  Copyright © 2016 abdulajet. All rights reserved.
//


import UIKit
import SpriteKit
import GameplayKit


class GameViewController: UIViewController {
    
    var counter:Int = 0
    var blockspersec = 0
    var multiplier = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
 
        }

    }
    


    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
  
    @IBAction func buttonPressed(_ sender: UIButton) {
    counter = counter + 1 + multiplier
    scoreLabel.text = "\(counter) Diamonds"

    }
    @IBAction func cheatCode(_ sender: UIButton) {
        counter = counter + 100
        scoreLabel.text = "\(counter) Diamonds"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        counter = 0
        scoreLabel.text = "\(counter) Diamonds"
    }
    @IBAction func multiplierOne(_ sender: UIButton) {
        if counter >= 100 {
    
            multiplier = multiplier + 2
            counter = counter - 100
            scoreLabel.text = "\(counter) Diamonds"
        }

          scoreLabel.text = "\(counter) Diamonds"
    }
 
}
