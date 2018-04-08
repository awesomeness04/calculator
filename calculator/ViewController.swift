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
        showInput()
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        calculator.clear()
        showInput()
    }
    @IBAction func signPressed(_ sender: UIButton) {
        calculator.sign()
        showInput()
    }
    @IBAction func percentPressed(_ sender: UIButton) {
        calculator.percent()
        showInput()
    }
    @IBAction func decimalPressed(_ sender: UIButton) {
        calculator.decimal()
        showInput()
    }
    @IBAction func additionPressed(_ sender: UIButton) {
        calculator.addition()
        showOutput()
    }
    @IBAction func subtractionPressed(_ sender: UIButton) {
        calculator.subtraction()
        showOutput()
    }
    @IBAction func multiplicationPressed(_ sender: UIButton) {
        calculator.multiplication()
        showOutput()
    }
    @IBAction func divisionPressed(_ sender: UIButton) {
        calculator.division()
        showOutput()
    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        calculator.equal()
        showOutput()
    }
    
    
    
    func showInput() {
        label.text = String(calculator.input)
    }
    func showOutput() {
        label.text = String(calculator.output)
    }
}

