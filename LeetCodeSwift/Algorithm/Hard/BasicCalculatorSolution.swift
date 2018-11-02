//
// Created by Xi, Paul on 11/2/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class BasicCalculatorSolution {
    func calculate(_ str: String) -> Int {
        var result = 0
        var sign = 1
        var number = 0
        var stack: [Int] = []

        for char in str {
            if char >= Character("0") && char <= Character("9") {
                number = number * 10 + Int(String(char))!
            } else if char == Character("+") {
                result += sign * number
                number = 0
                sign = 1
            } else if char == Character("-") {
                result += sign * number
                number = 0
                sign = -1
            } else if char == Character("(") {
                stack.insert(result, at: 0)
                stack.insert(sign, at: 0)
                result = 0
                sign = 1
            } else if char == Character(")") {
                result += sign * number
                number = 0
                result *= stack.removeFirst()
                result += stack.removeFirst()
            }
        }

        result += sign * number
        return result
    }
}
