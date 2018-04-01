//
//  ViewController.swift
//  calculator
//
//  Created by UCode on 2/11/18.
//  Copyright © 2018 Nick Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func digitPressed(_ sender: UIButton) {
        calculator.enterDigit(digit: sender.tag)
        updateInputLabel()
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        calculator.clear()
        updateInputLabel()
    }
    @IBAction func signPressed(_ sender: UIButton) {
        calculator.sign()
        updateInputLabel()
    }
    @IBAction func percentPressed(_ sender: UIButton) {
        calculator.percent()
        updateInputLabel()
    }
    @IBAction func decimalPressed(_ sender: UIButton) {
        calculator.decimal()
        updateInputLabel()
    }
    @IBAction func additionPressed(_ sender: UIButton) {
        calculator.addition()
        updateInputLabel()
    }
    
    
    
    func updateInputLabel() {
        label.text = String(calculator.input)
    }
}

