//
// Created by Xi, Paul on 11/24/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MissingNumberSolution {
    func missingNumber(_ nums: [Int]) -> Int {
        let len =  nums.count
        var sum = len * (len + 1) / 2

        for num in nums {
            sum -= num
        }

        return sum
    }
}
