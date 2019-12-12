//
//  ViewController.swift
//  MultipleChoice
//
//  Created by Fulcherberguer, Fernanda on 2019-12-05.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    //Made outlets to connect with my view controller
    @IBOutlet weak var questionsField: UITextField!
    @IBOutlet weak var studentAnswer: UITextField!
    @IBOutlet weak var correctAnswers: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
    //MARK: Methods
    //Runs once after the view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    //MARK: Actions
    //Made an action for the convert button
    @IBAction func analyzeAnswers(_ sender: Any) {
        // Check for a number in number of questions
        guard let questionsFieldString = questionsField.text, let numberOfQuestions = Int(questionsFieldString) else {
            outputTextView.text = "Error. Please enter an integer value grater than 0."
            return
            
        }
        
        // Check if there is any text and if it matches student's answers
        guard let studentInput = studentAnswer.text, studentInput.count == numberOfQuestions else {
            outputTextView.text = "Error. Please be sure to enter exactly \(numberOfQuestions) answers!"
            return
            
        }
        
        // Check if there is text and it matches number of questions
        guard let teacherAnswer = correctAnswers.text, teacherAnswer.count == numberOfQuestions else {
            outputTextView.text = "Error. Please be sure to enter exactly \(numberOfQuestions) answers!"
            return
            
        }
        
        // For in Loop to find the position to see if the student answer is right
        for (position, character) in studentAnswer.() {
            let index = correctAnswers.index(correctAnswers.startIndex, offsetBy: position)
            if character == teacherAnswer[index] && answers.contains(character){
                correctAnswers += 1
            }
        }
        
        outputTextView.text = "The student got \(correctAnswers) questions right."
        
    }
    
    
    
    
    
}












