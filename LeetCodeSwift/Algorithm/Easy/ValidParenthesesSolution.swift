//
// Created by Xi, Paul on 9/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ValidParenthesesSolution {
    static let map: [Character: Character] = ["}": "{", ")": "(", "]": "["]

    func isValid(_ str: String) -> Bool {
        var stack: [Character] = []

        for char in str {
            if let value = ValidParenthesesSolution.map[char] {
                if stack.isEmpty || stack.removeLast() != value {
                    return false
                }
            } else {
                stack.append(char)
            }
        }

        return stack.isEmpty
    }
}
