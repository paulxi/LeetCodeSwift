//
// Created by Xi, Paul on 11/18/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class RemoveDuplicatesFromSortedArraySolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }

        var pos = 0
        for idx in 1 ..< nums.count {
            if nums[pos] != nums[idx] {
                pos += 1
                nums[pos] = nums[idx]
            }
        }

        return pos + 1
    }
}
