//
//  Jeel_Calculator_Model.swift
//  Jeel_Patel_Orange_Calculator
//
//  Created by Jeel Patel on 2019-09-11.
//  Copyright © 2019 Jeel Patel. All rights reserved.
//

import Foundation

class Jeel_Calculator_Model {
    
    var firstNumber : Double?
    var secondNumber : Double?
    var operation : String?
    
    func updateNumber(newNumber: Double){
        if(firstNumber == nil){
            firstNumber = newNumber;
        } else if (operation == nil){
            firstNumber = newNumber
        } else {
            secondNumber = newNumber
        }
    }
    
    func getResult() -> Double {
        var result: Double
        switch (operation){
        case "+":
            result = firstNumber! + secondNumber!
        case "-":
            result = firstNumber! - secondNumber!
        case "x":
            result = firstNumber! * secondNumber!
        case "/":
            result = firstNumber! / secondNumber!
        default:
            result = 0.0
        }
        return result 
    }
    
    func reset() {
        firstNumber = nil
        secondNumber = nil
        operation = nil
    }
}
