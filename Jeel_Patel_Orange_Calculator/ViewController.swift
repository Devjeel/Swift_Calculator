//
//  ViewController.swift
//  Jeel_Patel_Orange_Calculator
//
//  Created by Jeel Patel on 2019-09-11.
//  Copyright © 2019 Jeel Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var numberDisplay: UITextField!
    var startNewNumber = true
    
    //MARK:- Other Variables
    var calculatorModel = Jeel_Calculator_Model()
    
    //MARK:- Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- IBActions
    @IBAction func buttonTouched(_ sender: UIButton) {
        print("Button Touched" + String(sender.currentTitle ?? ""))
        
        let buttonText = sender.currentTitle!
        
        var currentValue = numberDisplay.text!
        
        switch (buttonText){
            
            case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".":
                if(startNewNumber){
                    if(buttonText == "."){
                        currentValue = "0."
                    } else {
                        currentValue = buttonText
                    }
                } else {
                    if(buttonText == "."){
                        if(!currentValue.contains(".")){
                            currentValue = currentValue + buttonText
                        }
                    } else {
                        currentValue = currentValue + buttonText
                    }
                }
                startNewNumber = false
                calculatorModel.updateNumber(newNumber: Double(currentValue)!)
            
            case "+", "-", "x", "/":
                if(calculatorModel.secondNumber != nil){
                    currentValue = String(calculatorModel.getResult())
                    calculatorModel.reset()
                    calculatorModel.updateNumber(newNumber: Double(currentValue)!)
                }
                calculatorModel.operation = buttonText
                startNewNumber = true
            
            case "=":
                if(calculatorModel.secondNumber == nil){
                   calculatorModel.updateNumber(newNumber: Double(currentValue)!)
                }
                currentValue = String(calculatorModel.getResult())
                startNewNumber = true
            
            case "C":
                currentValue = "0.0"
                calculatorModel.reset()
                startNewNumber = true
            
            default:
                print("Default");
            }
        
        numberDisplay.text = currentValue
    }
    		
}

