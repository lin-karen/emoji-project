//
//  ViewController.swift
//  emojiProject
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🍋": "sour but a great addition", "🥑" : "sorry, but basic", "🍍" : "hard to first break down, but sweet on the inside", "🍓" : "classically sweet", "🍉" : "summertimes' favorite", "🍎" : "a true classic fruit"]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Based on the fruit lemon...", message: "You are sour but make many things better!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

