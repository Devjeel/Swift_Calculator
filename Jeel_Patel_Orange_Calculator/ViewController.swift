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
            
            case "0", "1","2","3", "4","5", "6", "7","8","9":
                print(buttonText)
                if(currentValue == "0.0"){
                   currentValue = buttonText
                } else {
                    currentValue += buttonText
                }
                print(currentValue)
                calculatorModel.updateNumber(newNumber: <#T##Double#>(currentValue))
            
            case "+":
                calculatorModel.operation = buttonText
            
            default:
                print("Default");
            }
        
        numberDisplay.text = currentValue
    }
    		
}

