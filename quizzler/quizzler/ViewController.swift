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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerBtn(_ sender: UIButton) {
    }
    
}

