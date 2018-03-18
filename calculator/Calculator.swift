//
//  Calculator.swift
//  calculator
//
//  Created by UCode on 3/4/18.
//  Copyright © 2018 Nick Inc. All rights reserved.
//

import Foundation

class Calculator {
    
    
    var input: Double
    var output: Double
    var operation: Operation
    var decimalPlace: Int
    var inputDecimals: Bool
    
    
    init() {
        
        input = 0.0
        output = 0.0
        operation = .none
        decimalPlace = 0
        inputDecimals = false
        
    }
    
    func enterDigit(digit: Int){
        input = input * 10.0 + Double(digit)
    }
    
    func clear(){
        input=0
        output=0
    }
    func sign() {
        input *= -1
    }
    func percent(){
        input /= 100
    }
    func addition(){
        if operation == .none {
            output = input
        }
        else {
            output += input
            operation = .addition
        }
        
    }
    func subtraction(){
        if operation == .none {
            output = input
        }
        else {
            output -= input
            operation = .subtraction
        }
        
    }
    func multiplication(){
        if operation == .none {
            output = input
        }
        else {
            output *= input
            operation = .multiplication
        }
        
    }
    func division(){
        if operation == .none {
            output = input
        }
        else {
            output /= input
            operation = .division
        }
        
    }

    
    
}





