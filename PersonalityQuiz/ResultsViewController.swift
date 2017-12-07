//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Nima Soleimani on 11/18/17.
//  Copyright © 2017 Nima Soleimani. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultsAnswerLabel: UILabel!
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map {$0.type}
        
        //Tally frequency of each answer
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
//        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
//            { (pair1, pair2) -> Bool in
//                return pair1.value > pair2.value
//            })
//        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultsAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
