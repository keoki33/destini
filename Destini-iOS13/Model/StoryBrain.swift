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
        )]
    
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
    
    
}
