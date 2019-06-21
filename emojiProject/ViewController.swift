//
//  ViewController.swift
//  emojiProject
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let customMessages = ["lemon": ["sour but a great addition to things", "very versatile"], "avocado" : ["sorry, but basic", "the one that always knows what 'in'"], "pineapple" : ["hard to first break down, but sweet on the inside", "tropical  *wink*"], "strawberry" : ["classically sweet", "a classic"], "watermelon" : ["summertimes' favorite", "best of the season"], "apple" : ["a true classic fruit" ,"you're home to many people bringin warmth and comfort"]]

    let emojis = ["🍋": "lemon", "🥑" : "avocado", "🍍" : "pineapple", "🍓" : "strawberry", "🍉" : "watermelon", "🍎" : "apple"]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion =  sender.titleLabel?.text
        let randomNumber = Int.random(in: 0...1)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        let alertController = UIAlertController(title: "this fruit really means:", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

