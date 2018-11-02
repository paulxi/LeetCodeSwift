//
// Created by Xi, Paul on 9/17/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ReverseIntegerSolution {
    func reverse(_ value: Int) -> Int {
        var num = value
        var rev: Int = 0
        let posRemainder = Int32.max % 10
        let negRemainder = Int32.min % 10
        while num != 0 {
            let pop = num % 10
            num /= 10
            if rev > Int32.max / 10 || (rev == Int32.max / 10 && pop > posRemainder) {
                return 0
            }
            if rev < Int32.min / 10 || (rev == Int32.min / 10 && pop < negRemainder) {
                return 0
            }
            rev = rev * 10 + pop
        }

        return rev
    }
}
