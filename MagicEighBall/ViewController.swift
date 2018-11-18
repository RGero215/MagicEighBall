//
//  ViewController.swift
//  MagicEighBall
//
//  Created by Ramon Geronimo on 10/23/18.
//  Copyright © 2018 Ramon Geronimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]


    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shakeButton.layer.cornerRadius = 35.0
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
}

