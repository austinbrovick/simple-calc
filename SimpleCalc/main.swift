//
//  main.swift
//  SimpleCalc
//
//  Created by Austin Brovick  on 10/10/17.
//  Copyright © 2017 Austin Brovick . All rights reserved.
//

import Foundation


var responses: [String] = []

print("Enter an expression seperated by returns:")

var status = true
var answer = 0
var i = 0
while (status && i < 3) {
    let response = readLine(strippingNewline: true)!
    responses += response.components(separatedBy: " ")
    
    switch responses[responses.count-1] {
    case "count":
        answer = responses.count - 1
        status = false
    case "avg":
        for i in 0...(responses.count-2) {
            answer += Int(responses[i])!
        }
        answer = answer/responses.count-2
        status = false
    case "fact":
        answer = 1
        for x in 1...Int(responses[0])! {
            answer *= x
        }
        status = false
    default:
        i = i + 1
        continue
    }
}
if (status) {
    let mathOperation = responses[1]
    switch mathOperation {
        case "+":
            answer = Int(responses[0])! + Int(responses[2])!
        case "-":
            answer = Int(responses[0])! - Int(responses[2])!
        case "/":
            answer = Int(responses[0])!/Int(responses[2])!
        case "*":
            answer = Int(responses[0])!*Int(responses[2])!
        default:
            print("please provide valid input")
        
    }
}
print("Result: " + String(answer))





