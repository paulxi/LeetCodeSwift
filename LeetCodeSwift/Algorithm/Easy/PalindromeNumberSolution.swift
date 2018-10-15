//
// Created by Xi, Paul on 10/14/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class PalindromeNumberSolution {
    func isPalindrome(_ input: Int) -> Bool {
        if input < 0 || (input % 10 == 0 && input != 0) {
            return false
        }

        var num = input
        var reversed = 0
        while num > reversed {
            reversed = reversed * 10 + num % 10
            num /= 10
        }

        return num == reversed || num == reversed / 10
    }
}
