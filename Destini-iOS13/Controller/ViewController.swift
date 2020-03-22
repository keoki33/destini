//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   updateUi()


    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextQuestion(choice: sender.tag)
        updateUi()
    }
    
    func updateUi() {
        storyLabel.text = storyBrain.display(name: "title")
           choice1Button.setTitle(storyBrain.display(name: "choice1"), for: .normal)
           choice2Button.setTitle(storyBrain.display(name: "choice2"), for: .normal)
    }
    

}

