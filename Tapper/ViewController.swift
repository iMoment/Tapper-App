//
//  ViewController.swift
//  Tapper
//
//  Created by Stanley Pan on 1/24/16.
//  Copyright © 2016 Stanley Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    @IBOutlet weak var logoTitle: UIImageView!
    @IBOutlet weak var tapTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGame(sender: UIButton) {
        
        if tapTextField.text != nil && tapTextField.text != "" {
            logoTitle.hidden = true
            playButton.hidden = true
            tapTextField.hidden = true
            tapButton.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(tapTextField.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }

    @IBAction func coinTapped(sender: UIButton) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func updateTapsLabel() {
        tapLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        tapTextField.text = ""
        logoTitle.hidden = false
        playButton.hidden = false
        tapTextField.hidden = false
        tapButton.hidden = true
        tapLabel.hidden = true
    }
}

