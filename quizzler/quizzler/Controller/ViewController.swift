//
//  ViewController.swift
//  quizzler
//
//  Created by mohamdan on 01/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerBtn(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI) , userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLbl.text = quizBrain.getQuestionText()
        scoreLbl.text = "score : \(quizBrain.getScore())"
        progressBar.progress = quizBrain.getProgress()
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        updateAnswers()
    }
    
    func updateAnswers(){
        choice1.setTitle(quizBrain.getAnswer(choice: 0), for: .normal)
        choice2.setTitle(quizBrain.getAnswer(choice: 1), for: .normal)
        choice3.setTitle(quizBrain.getAnswer(choice: 2), for: .normal)
    }
    
}

