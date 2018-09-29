//
// Created by Xi, Paul on 9/29/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class MaximumSubarraySolution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let result = nums.reduce((Int.min, Int.min)) {
            (result, num) -> (Int, Int) in
            var (maximum, temp) = result
            if temp < 0 {
                temp = num
            } else {
                temp += num
            }
            maximum = max(maximum, temp)

            return (maximum, temp)
        }

        return result.0
    }
}
