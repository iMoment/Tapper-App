//
//  ViewController.swift
//  Tapper
//
//  Created by Stanley Pan on 1/24/16.
//  Copyright © 2016 Stanley Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        logoTitle.hidden = true
        playButton.hidden = true
        tapTextField.hidden = true
        tapButton.hidden = false
        tapLabel.hidden = false 
    }

}

