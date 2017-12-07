//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Nima Soleimani on 11/19/17.
//  Copyright © 2017 Nima Soleimani. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: QuestionType
    var answers: [Answer]
}

enum QuestionType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", fox = "🦊", rabbit = "🐰", lion = "🦁", pig = "🐷"
    
    var definition: String {
        switch self {
        case .dog: return "You are incredibly outgoing. You surround yourself with the people you love, and enjoy activities with your friends."
        case .fox: return "You are sly and cunning.  People underestimate you, and you take full advantage."
        case .rabbit: return "You love everything that is soft. You are healthy and full of energy."
        case .lion: return "You are a fierce beast, but gentle when you need to be. Everyone looks up to you and respects you."
        case .pig: return "You are highly intelligent, but can be self-centered at times. You can be unapologetically greedy."
        }
    }
}

