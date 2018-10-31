//
// Created by Xi, Paul on 10/30/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class LongestConsecutiveSequenceSolution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }

        let sorted = nums.sorted()
        var last = 0
        var maxLength = 1
        var duplicated = 0

        for idx in 1 ..< sorted.count {
            if sorted[idx] == sorted[idx - 1] {
                duplicated += 1
            } else if sorted[idx] == sorted[idx - 1] + 1 {
                let length = idx - duplicated - last + 1
                maxLength = max(maxLength, length)
            } else {
                duplicated = 0
                last = idx
            }
        }

        return maxLength
    }
}
