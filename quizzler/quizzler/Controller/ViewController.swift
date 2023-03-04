//
//  ViewController.swift
//  quizzler
//
//  Created by mohamdan on 01/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLbl: UILabel!
    
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
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
    }
    
}

