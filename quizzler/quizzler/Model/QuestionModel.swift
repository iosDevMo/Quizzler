//
//  QuestionModel.swift
//  quizzler
//
//  Created by mohamdan on 04/03/2023.
//

import Foundation

struct Question {
    
    let text : String
    let answer : [String]
    let correctAnswer : String
    
    init(q:String, a:[String], correctAnswer:String){
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
