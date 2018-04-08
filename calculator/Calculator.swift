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
    
    
    init() {
        
        input = 0.0
        output = 0.0
        operation = .none
        decimalPlace = 0
        
    }
    
    func enterDigit(digit: Int){
        if decimalPlace == 0 {
            input *= 10
        }
        input += Double(digit) / pow(10.0, Double(decimalPlace))
        if decimalPlace > 0 {
            decimalPlace += 1
        }
    }
    
    func clear(){
        input=0
        output=0
        operation = .none
        decimalPlace = 0
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
            input = 0
        }
        else {
            output += input
            input = 0
        }
        operation = .addition
    }
    func subtraction(){
        if operation == .none {
            output = input
            input = 0
        }
        else {
            output -= input
            input = 0
        }
        operation = .subtraction
        
    }
    func multiplication(){
        if operation == .none {
            output = input
            input = 0
        }
        else {
            output *= input
            input = 0
        }
        operation = .multiplication
        
    }
    func division(){
        if operation == .none {
            output = input
            input = 0
        }
        else {
            output /= input
            input = 0
        }
        operation = .division
        
    }
    func decimal(){
        if decimalPlace == 0 {
            decimalPlace = 1
        }
        
    }
    func equal(){
        if operation == .addition {
            output += input
        }
        if operation == .subtraction {
            output -= input
        }
        if operation == .multiplication {
            output *= input
        }
        if operation == .division {
            output /= input
        }
    
    }
}
    







