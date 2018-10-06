//
// Created by Xi, Paul on 10/5/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class ProductOfArrayExceptSelfSolution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result: [Int] = Array(repeating: 1, count: nums.count)
        for idx in 1 ..< nums.count {
            result[idx] = result[idx - 1] * nums[idx - 1]
        }

        var right = 1
        for idx in stride(from: nums.count - 1, through: 0, by: -1) {
            result[idx] *= right
            right *= nums[idx]
        }

        return result
    }
}

