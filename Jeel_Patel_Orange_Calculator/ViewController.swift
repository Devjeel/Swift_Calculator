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
    
    //MARK:- Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- IBActions
    @IBAction func buttonTouched(_ sender: UIButton) {
        print("Button Touched" + String(sender.currentTitle ?? ""))
    }
}

