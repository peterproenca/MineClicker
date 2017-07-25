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
    var blockspersec = 1
    
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

        while true{
            counter = counter + blockspersec
            scoreLabel.text = "\(counter) blocks mined!"

        }
    }
    


    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
  
    @IBAction func buttonPressed(_ sender: UIButton) {
    counter = counter + 1
    scoreLabel.text = "\(counter) blocks mined!"

    }
    
  

}
