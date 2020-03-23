//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    
    let story = [Story(
        title:"You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right"
        ),
    Story(
    title:"You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."
    ),
    Story(
    title:"You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."
    )
    
    
    ]
    
    var selectedStory = 0
    
    
    func display(name: String) -> String {
        switch name {
        case "title":
            return story[selectedStory].title
        case "choice1":
            return story[selectedStory].choice1
        case "choice2":
            return story[selectedStory].choice2
        default:
            return "error"
        }
    }
    
    mutating func nextStory(userChoice: Int)  {
        if selectedStory < story.count - 1
        {
            selectedStory += userChoice
        }
        else {
            selectedStory = 0
        }
    }
    
}
