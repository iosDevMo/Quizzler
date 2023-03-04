//
//  QuestionModel.swift
//  quizzler
//
//  Created by mohamdan on 04/03/2023.
//

import Foundation

struct Question {
    
    let text : String
    let answer : String
    
    init(q:String, a:String){
        text = q
        answer = a
    }
}
