//
//  MainViewController.swift
//  ChatApp-iOS13
//
//  Created by Dennis Nesanoff on 17.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let tileText = "⚡️FlashChat"
        var charIndex = 0.0
        for letter in tileText {
            print("-")
            print(0.1 * charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1.5
        }
    }
}
